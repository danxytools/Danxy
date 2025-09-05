#!/bin/bash

if ! command -v node &> /dev/null; then
  pkg install -y nodejs -y
fi


mkdir -p $HOME/wa-bot
cd $HOME/wa-bot

if [ ! -f "package.json" ]; then
cat <<EOF > package.json
{
  "name": "wa-bot",
  "version": "1.0.0",
  "main": "index.js",
  "type": "module",
  "dependencies": {
    "@whiskeysockets/baileys": "^6.7.1",
    "qrcode-terminal": "^0.12.0",
    "node-fetch": "^3.3.2"
  }
}
EOF
fi

# Buat file otak bot
cat <<'EOF' > index.js
import makeWASocket, { useMultiFileAuthState } from "@whiskeysockets/baileys";
import qrcode from "qrcode-terminal";
import fetch from "node-fetch";

const PREFIX = "."; // prefix command

// Tampilan menu fitur
const menuList = `
────────────────────────
        DANXY BOT
────────────────────────
[ ✓ ] ${PREFIX}halo
[ ✓ ] ${PREFIX}menu
[ ✓ ] ${PREFIX}ai
[ ∅ ] ${PREFIX}tools
[ ! ] ${PREFIX}about
────────────────────────
`;

async function startBot() {
  const { state, saveCreds } = await useMultiFileAuthState("auth_info");
  const sock = makeWASocket({
    auth: state,
    printQRInTerminal: false
  });

  // QR code handler
  sock.ev.on("connection.update", ({ qr, connection }) => {
    if (qr) {
      console.log("\nScan QR berikut di WhatsApp -> Perangkat Tertaut:");
      qrcode.generate(qr, { small: true });
    }
    if (connection === "close") {
      console.log("Koneksi terputus, mencoba restart...");
      startBot();
    }
    if (connection === "open") {
      console.log("Bot berhasil terhubung ke WhatsApp!");
    }
  });

  // Message handler
  sock.ev.on("messages.upsert", async (m) => {
    const msg = m.messages[0];
    if (!msg.message) return;

    const from = msg.key.remoteJid;
    const text = msg.message.conversation || "";

    // Hanya respon kalau pakai prefix
    if (!text.startsWith(PREFIX)) return;
    const command = text.slice(1).trim(); // hapus prefix

    if (command === "menu") {
      await sock.sendMessage(from, { text: menuList });
      return;
    }

    if (command === "halo") {
      await sock.sendMessage(from, { text: "Bot aktif." });
      return;
    }

    if (command === "about") {
      await sock.sendMessage(from, { text: "DanxyBot v1.0" });
      return;
    }

    if (command.startsWith("ai ")) {
      const query = command.slice(3).trim();
      if (!query) {
        await sock.sendMessage(from, { text: "Masukkan pertanyaan setelah '.ai'" });
        return;
      }

      try {
        const res = await fetch(`https://api.fikmydomainsz.xyz/ai/nowchat?q=${encodeURIComponent(query)}`);
        const data = await res.json();

        let answer = data?.result || "Tidak ada jawaban dari AI.";
        await sock.sendMessage(from, { text: answer });
      } catch (err) {
        console.error("AI Error:", err);
        await sock.sendMessage(from, { text: "Gagal terhubung ke API AI." });
      }
    }
  });

  sock.ev.on("creds.update", saveCreds);
}

startBot();
EOF

# Install dependencies
npm install

# Jalankan bot
node index.js