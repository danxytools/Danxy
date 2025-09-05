#!/bin/bash

# Cek & install Node.js kalau belum ada
if ! command -v node &> /dev/null; then
  pkg install -y nodejs -y
fi

mkdir -p $HOME/wa-bot
cd $HOME/wa-bot

# Buat package.json kalau belum ada
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

# Buat file index.js (otak bot)
cat <<'EOF' > index.js
import makeWASocket, { useMultiFileAuthState, fetchLatestBaileysVersion } from "@whiskeysockets/baileys"
import qrcode from "qrcode-terminal"
import readline from "readline"

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

async function startBot() {
  const { state, saveCreds } = await useMultiFileAuthState("session")
  const { version } = await fetchLatestBaileysVersion()

  console.clear()
  console.log("════════════════════════════════════")
  console.log("         DANXYBOT - CONNECT")
  console.log("════════════════════════════════════")
  console.log("[1] Login dengan QR Code")
  console.log("[2] Login dengan Pairing Code")
  console.log("════════════════════════════════════")

  rl.question("Pilih metode login (1/2): ", async (answer) => {
    if (answer === "1") {
      // LOGIN QR
      const sock = makeWASocket({
        version,
        auth: state,
        printQRInTerminal: true
      })

      sock.ev.on("connection.update", ({ connection, qr }) => {
        if (qr) {
          console.clear()
          console.log("════════════════════════════════════")
          console.log("        SCAN QR UNTUK LOGIN")
          console.log("════════════════════════════════════")
          qrcode.generate(qr, { small: true })
          console.log("════════════════════════════════════")
          console.log("Buka WhatsApp > Perangkat Tertaut > Scan QR di atas")
          console.log("════════════════════════════════════")
        }
        if (connection === "open") {
          console.log("✓ Bot berhasil terhubung dengan WhatsApp (QR).")
        }
        if (connection === "close") {
          console.log("✗ Koneksi terputus, mencoba restart...")
          startBot()
        }
      })

      sock.ev.on("creds.update", saveCreds)
    }

    if (answer === "2") {
      // LOGIN PAIRING CODE
      const sock = makeWASocket({
        version,
        auth: state,
        printQRInTerminal: false
      })

      rl.question("Masukkan nomor WhatsApp (contoh: 628xxx): ", async (number) => {
        const code = await sock.requestPairingCode(number)
        console.clear()
        console.log("════════════════════════════════════")
        console.log("        PAIRING CODE LOGIN")
        console.log("════════════════════════════════════")
        console.log(`MASUKAN NOMOR BOT ${number}:`)
        console.log(`\n     ${code}\n`)
        console.log("════════════════════════════════════")
        console.log("Buka WhatsApp > Perangkat Tertaut > Masukkan kode di atas")
        console.log("════════════════════════════════════")
      })

      sock.ev.on("connection.update", ({ connection }) => {
        if (connection === "open") {
          console.log("✓ Bot berhasil terhubung dengan WhatsApp (Pairing).")
        }
        if (connection === "close") {
          console.log("✗ Koneksi terputus, mencoba restart...")
          startBot()
        }
      })

      sock.ev.on("creds.update", saveCreds)
    }
  })
}

startBot()
EOF

# Install dependencies
npm install

# Jalankan bot
node index.js