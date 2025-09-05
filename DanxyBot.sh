#!/bin/bash
# install marai memori kuuuwebak
if ! command -v node &> /dev/null; then
  pkg install -y nodejs -y
fi

mkdir -p $HOME/wa-bot
cd $HOME/wa-bot

if [ ! -f "package.json" ]; then
cat <<EOF > package.json
{
  "name": "DanxyBot",
  "version": "1.0.0",
  "main": "index.js",
  "type": "module",
  "dependencies": {
    "@whiskeysockets/baileys": "^6.7.1",
    "qrcode-terminal": "^0.12.0"
  }
}
EOF
fi

# file otak bot
cat <<'EOF' > index.js
import makeWASocket, { useMultiFileAuthState } from "@whiskeysockets/baileys";
import qrcode from "qrcode-terminal";

async function startBot() {
  const { state, saveCreds } = await useMultiFileAuthState("session");
  const sock = makeWASocket({
    auth: state,
    printQRInTerminal: false // kita handle QR sendiri
  });

  // Tampilkan QR di terminal
  sock.ev.on("connection.update", ({ qr, connection, lastDisconnect }) => {
    if (qr) {
      console.log("\n[ ! ] Scan QR berikut di WhatsApp -> Perangkat Tertaut:");
      qrcode.generate(qr, { small: true });
    }
    if (connection === "close") {
      console.log("[ ∅ ] Koneksi terputus, coba jalankan ulang bot.");
    }
    if (connection === "open") {
      console.log("[ ✓ ] Bot berhasil terhubung ke WhatsApp!");
    }
  });

  // Auto reply
  sock.ev.on("messages.upsert", async (m) => {
    const msg = m.messages[0];
    if (!msg.message) return;

    const from = msg.key.remoteJid;
    const text = msg.message.conversation || "";

    if (text.toLowerCase() === "halo") {
      await sock.sendMessage(from, { text: "JEMBOT AKU MUMET LALU KABEH NGGAE BOT WHATSAPP WES IKI WES ALHAMDULILLAH AKU ISOH NGRESPON NGENE\n> *DANXY-BOT*" });
    } else if (text.toLowerCase() === "menu") {
      await sock.sendMessage(from, { text: "[ • ] Menu:\n- halo\n- menu" });
    }
  });

  // Simpan session biar ga perlu scan ulang
  sock.ev.on("creds.update", saveCreds);
}

startBot();
EOF

# Install dependencies
npm install

# Jalankan bot
node index.js