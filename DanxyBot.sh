#!/bin/bash
if ! command -v node &> /dev/null; then
  pkg install -y nodejs -y
fi

mkdir -p $HOME/pairing-loop
cd $HOME/pairing-loop

if [ ! -f "package.json" ]; then
cat <<EOF > package.json
{
  "name": "pairing-loop",
  "version": "1.0.0",
  "main": "loop.js",
  "type": "module",
  "dependencies": {
    "@whiskeysockets/baileys": "^6.7.1"
  }
}
EOF
fi

cat <<'EOF' > loop.js
import makeWASocket, { fetchLatestBaileysVersion } from "@whiskeysockets/baileys"
import readline from "readline"

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

function getRandomDelay(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min
}

async function startLoop() {
  const { version } = await fetchLatestBaileysVersion()

  rl.question("Masukkan nomor WhatsApp (contoh: 628xxx): ", async (number) => {
    console.log("════════════════════════════════════")
    console.log("     PAIRING CODE LOOP (UNLIMITED)")
    console.log("Ketik 'Q' lalu ENTER untuk berhenti")
    console.log("════════════════════════════════════")

    let stop = false

    // Listener input untuk berhenti
    rl.on("line", (input) => {
      if (input.trim().toUpperCase() === "Q") {
        console.log("════════════════════════════════════")
        console.log("Loop dihentikan oleh user (Q).")
        console.log("════════════════════════════════════")
        stop = true
        rl.close()
      }
    })

    let count = 1
    while (!stop) {
      try {
        const sock = makeWASocket({
          version,
          auth: { creds: {}, keys: {} }, // tidak simpan session
          printQRInTerminal: false
        })

        const code = await sock.requestPairingCode(number)
        console.log(`[${count}] Pairing Code: ${code}`)

        const delay = getRandomDelay(1000, 5000) // 1-5 detik
        console.log(`   → jeda ${delay / 1000} detik...`)
        await new Promise(r => setTimeout(r, delay))

        count++
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
npm install
node loop.js