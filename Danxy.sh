#!/bin/bash

# Fungsi daftar user dan pasangan whoami (langsung teks)
Id() {
    echo "user00 u0_a192"
    echo "user99 u0_a122"
    echo "user491 u0_a300"
}


# Minta input user
read -p "Masukkan user: " INPUT_USER

# Cari pasangan whoami dari daftar Id()
PAIR_WHOAMI=$(Id | grep -w "$INPUT_USER" | awk '{print $2}')

# Kalau user tidak ditemukan di daftar
if [ -z "$PAIR_WHOAMI" ]; then
    echo "⛔ User tidak ditemukan di daftar!"
    exit 1
fi

# Ambil whoami dari sistem Termux
SYSTEM_WHOAMI=$(whoami)

# Cocokkan pasangan dengan whoami sistem
if [ "$PAIR_WHOAMI" = "$SYSTEM_WHOAMI" ]; then
    echo "✅ Login berhasil! User $INPUT_USER cocok dengan sistem."
    # Lanjutkan script di sini
else
    echo "⛔ Login gagal! Pasangan tidak cocok."
    exit 1
fi