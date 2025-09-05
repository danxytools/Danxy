#!/bin/bash
if ! command -v node &> /dev/null; then
  pkg install -y nodejs
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
    "@whiskeysockets/baileys": "^6.7.1"
  }
}
EOF
fi

cat <<'EOF' > index.js
import makeWASocket, { useMultiFileAuthState } from "@whiskeysockets/baileys";

async function startBot() {
  const { state, saveCreds } = await useMultiFileAuthState("auth_info");
  const sock = makeWASocket({ auth: state });

  sock.ev.on("messages.upsert", async (m) => {
    const msg = m.messages[0];
    if (!msg.message) return;

    const from = msg.key.remoteJid;
    const text = msg.message.conversation || "";

    if (text.toLowerCase() === "halo") {
      await sock.sendMessage(from, { text: "Hai juga! Bot WhatsApp aktif 🚀" });
    }
  });

  sock.ev.on("creds.update", saveCreds);
}

startBot();
EOF
npm install
node index.js