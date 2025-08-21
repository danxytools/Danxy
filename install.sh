#!/data/data/com.termux/files/usr/bin/bash
# encjp_lang – encode bash ke karakter Jepang
set -e

[[ $# -lt 1 ]] && { echo "Usage: encjp_lang <script.sh> [output.sh]"; exit 1; }

SRC=$1
OUT=${2:-${SRC%.sh}_jp.sh}

[[ -f $SRC ]] || { echo "File $SRC tidak ada"; exit 1; }

# Base64 hasil gzip
ENC=$(gzip -c "$SRC" | base64 -w0)

# Mapping Base64 ke karakter Jepang
MAP=("あ" "い" "う" "え" "お" "か" "き" "く" "け" "こ"
     "さ" "し" "す" "せ" "そ" "た" "ち" "つ" "て" "と"
     "な" "に" "ぬ" "ね" "の" "は" "ひ" "ふ" "へ" "ほ"
     "ま" "み" "む" "め" "も" "や" "ゆ" "よ" "ら" "り"
     "る" "れ" "ろ" "わ" "を" "ん" "が" "ぎ" "ぐ" "げ"
     "ご" "ざ" "じ" "ず" "ぜ" "ぞ" "だ" "ぢ" "づ" "で"
     "ど" "ぱ" "ぴ" "ぷ")

# Fungsi decode di dalam output
cat >"$OUT" <<'EOF'
#!/data/data/com.termux/files/usr/bin/bash
# 暗号化されたコード — 日本語で隠蔽
JPN=("あ" "い" "う" "え" "お" "か" "き" "く" "け" "こ"
     "さ" "し" "す" "せ" "そ" "た" "ち" "つ" "て" "と"
     "な" "に" "ぬ" "ね" "の" "は" "ひ" "ふ" "へ" "ほ"
     "ま" "み" "む" "め" "も" "や" "ゆ" "よ" "ら" "り"
     "る" "れ" "ろ" "わ" "を" "ん" "が" "ぎ" "ぐ" "げ"
     "ご" "ざ" "じ" "ず" "ぜ" "ぞ" "だ" "ぢ" "づ" "で"
     "ど" "ぱ" "ぴ" "ぷ")

decode() {
  local str="$1"
  local res=""
  for ((i=0; i<${#str}; i++)); do
    c="${str:i:1}"
    for j in "${!JPN[@]}"; do
      [[ "$c" == "${JPN[j]}" ]] && res+="$(printf '\\x%02x' $((j+65)))" && break
    done
  done
  echo -n "$res" | base64 -d 2>/dev/null | gunzip -c
}

eval "$(decode 'EOF
EOF

# Encode ke karakter Jepang
for ((i=0; i<${#ENC}; i++)); do
  c="${ENC:i:1}"
  idx=$(printf '%d' "'$c")
  idx=$((idx - 65))
  [[ $idx -ge 0 && $idx -lt ${#MAP[@]} ]] && echo -n "${MAP[idx]}" >>"$OUT"
done

# Tutup string dan eval
cat >>"$OUT" <<'EOF'
')"
EOF

chmod +x "$OUT"
echo "✅ Script ter-encode ke karakter Jepang: $OUT"
