#!/bin/bash

GREEN="\e[32m"
RED="\e[31m"
NC="\e[0m"

declare -A negara
negara["US"]="United States (658)"
negara["JP"]="Japan (444)"
negara["IT"]="Italy (175)"
negara["DE"]="Germany (143)"
negara["RU"]="Russian Federation (96)"
negara["FR"]="France (86)"
negara["AT"]="Austria (79)"
negara["CZ"]="Czech Republic (69)"
negara["KR"]="Korea, Republic Of (61)"
negara["TW"]="Taiwan (50)"
negara["NO"]="Norway (43)"
negara["CH"]="Switzerland (42)"
negara["RO"]="Romania (40)"
negara["CA"]="Canada (35)"
negara["NL"]="Netherlands (35)"
negara["GB"]="United Kingdom (33)"
negara["PL"]="Poland (32)"
negara["ES"]="Spain (30)"
negara["SE"]="Sweden (29)"
negara["BG"]="Bulgaria (22)"
negara["DK"]="Denmark (18)"
negara["BE"]="Belgium (15)"
negara["RS"]="Serbia (13)"
negara["UA"]="Ukraine (12)"
negara["BR"]="Brazil (9)"
negara["ZA"]="South Africa (8)"
negara["GR"]="Greece (7)"
negara["IL"]="Israel (7)"
negara["ID"]="Indonesia (7)"
negara["TH"]="Thailand (6)"
negara["MX"]="Mexico (6)"
negara["TR"]="Turkey (6)"
negara["FI"]="Finland (6)"
negara["SK"]="Slovakia (6)"
negara["HU"]="Hungary (6)"
negara["AU"]="Australia (5)"
negara["VN"]="Viet Nam (5)"
negara["AR"]="Argentina (5)"
negara["IE"]="Ireland (4)"
negara["LT"]="Lithuania (4)"
negara["MY"]="Malaysia (4)"
negara["CL"]="Chile (4)"
negara["HK"]="Hong Kong (4)"
negara["MD"]="Moldova (4)"
negara["CN"]="China (3)"
negara["EC"]="Ecuador (3)"
negara["SI"]="Slovenia (3)"
negara["NZ"]="New Zealand (3)"
negara["BA"]="Bosnia (3)"
negara["IR"]="Iran (3)"
negara["EE"]="Estonia (3)"
negara["ME"]="Montenegro (2)"
negara["KZ"]="Kazakhstan (2)"
negara["NI"]="Nicaragua (2)"
negara["CO"]="Colombia (2)"
negara["IN"]="India (2)"
negara["BY"]="Belarus (2)"
negara["IS"]="Iceland (2)"
negara["FO"]="Faroe Islands (2)"
negara["HN"]="Honduras (2)"
negara["PH"]="Philippines (1)"
negara["NC"]="New Caledonia (1)"
negara["TZ"]="Tanzania (1)"
negara["BD"]="Bangladesh (1)"
negara["EG"]="Egypt (1)"
negara["LV"]="Latvia (1)"
negara["PE"]="Peru (1)"
negara["NG"]="Nigeria (1)"
negara["TN"]="Tunisia (1)"
negara["KY"]="Cayman Islands (1)"
negara["GU"]="Guam (1)"
negara["DO"]="Dominican Republic (1)"
negara["AO"]="Angola (1)"
negara["LA"]="Laos (1)"
negara["AM"]="Armenia (1)"
negara["PA"]="Panama (1)"
negara["GE"]="Georgia (1)"

menu_cctv() {
    clear
    echo -e "
              ⣸⣏⠛⠻⠿⣿⣶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⠀⠀⣿⣿⣿⣷⣦⣤⣈⠙⠛⠿⣿⣷⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⣈⠙⠻⠿⣿⣷⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀
          ⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⡉⠛⠻⢿⣿⣷⣶⣤⣀⠀⠀
          ⠀⠀⠀⠉⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⢻⣍⡉⠉⣿⠇⠀
          ⠀⠀⠀⠀⠀⠀⠀⢹⡏⢹⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣰⣿⣿⣾⠏⠀⠀
          ⠀⠀⠀⠀⠀⠀⠀⠘⣿⠈⣿⠸⣯⠉⠛⠿⢿⣿⣿⣿⣿⡏⠀⠻⠿⣿⠇⠀⠀⠀
     ⠀     ⠀⠀⠀⠀⠀⠀⠀⢿⡆⢻⡄⣿⡀⠀⠀⠀⠈⠙⠛⠿⠿⠿⠿⠛⠋⠀⠀⠀⠀
     ⠀     ⠀⠀⠀⠀⠀⠀⠀⢸⣧⠘⣇⢸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⠀⠀⠀⠀⠀⠀⣀⣀⣿⣴⣿⢾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⠀⣴⡶⠾⠟⠛⠋⢹⡏⠀⢹⡇⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⢠⣿⠀⠀⠀⠀⢀⣈⣿⣶⠿⠿⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⢸⣿⣴⠶⠞⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ⠀⠀⠁
${BG_RED}${YELLOW}  [ DANXY TOOLS V8.3 HACKING CCTV ALL NEGARA ]
${GREEN}           Code BY: Danxy Official
${GREEN}       [ TOTAL 73 NEGARA CCTV PUBLIC ]" | lolcat
    echo -e "${GREEN}╔══════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                CCTV ALL NEGARA               ║${NC}"
    echo -e "${GREEN}╚══════════════════════════════════════════════╝${NC}"
    echo ""
    for code in "${!negara[@]}"; do
        echo "Code: ($code) - ${negara[$code]}"
    done
    echo "[0] EXIT / KELUAR"
    echo ""
    read -p "[ ? ] Enter country code (e.g. JP, RU, US): " kode

    if [[ "$kode" == "0" ]]; then
        exit 0
    fi

    if [[ -z "${negara[$kode]}" ]]; then
        echo -e "${RED}[ ∅ ] Kode negara tidak valid${NC}"
        read -p "Enter untuk kembali..."
        menu_cctv
    fi

    echo -e "\n[ ? ] Mengambil daftar CCTV publik dari negara: ${negara[$kode]} ..."
    python3 - <<END
import requests, re
kode = "$kode"
url = f"http://www.insecam.org/en/bycountry/{kode}/"
headers = {"User-Agent": "Mozilla/5.0"}
try:
    r = requests.get(url, headers=headers, timeout=10)
    cams = re.findall(r"http://\d+\.\d+\.\d+\.\d+:\d+/", r.text)
    cams = list(set(cams))
    if not cams:
        print("[ ∅ ] Tidak ditemukan CCTV publik untuk kode:", kode)
    else:
        for cam in cams:
            print("[ ✓ ]", cam)
        print("\n[ ! ] Gunakan link di atas di VLC/mpv untuk menonton CCTV")
except Exception as e:
    print("[ x ] Gagal mengambil data CCTV:", e)
END

    echo ""
    read -p "Tekan Enter untuk kembali ke menu..."
    menu_cctv
}

menu_cctv
