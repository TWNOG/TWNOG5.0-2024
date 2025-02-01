#!/bin/bash

# 設定下載目錄
download_dir="sponsors"
mkdir -p "$download_dir"

# 定義要下載的 URL 陣列
urls=(
    "https://twnog.net/wp-content/uploads/2024/04/MODA.jpg"
    "https://twnog.net/wp-content/uploads/2024/04/CHT.jpg"
    "https://twnog.net/wp-content/uploads/elementor/thumbs/CHT-CDN-qmxjm0k1a1hp1muald4antan8xwysvfqv73izvgir0.jpg"
    "https://twnog.net/wp-content/uploads/elementor/thumbs/221219_JPIX_logo_基本_カラー_ポジ1-scaled-qmxjqhakm4p6slmlu5ccc2rvfsyfwl3zmj0wjyn82k.jpg"
    "https://twnog.net/wp-content/uploads/elementor/thumbs/opengear-qmxjsyl8ne3ffk0wcpxwey8nveqb7tyhmt0158ysvo.jpg"
    "https://twnog.net/wp-content/uploads/elementor/thumbs/isoc-fun-qmxjv6hisb4suesue6h6sw2ud5sie3ro9sgaxrobku.png"
    "https://twnog.net/wp-content/uploads/2024/04/APNIC-static-logotype-icon.png"
    "https://twnog.net/wp-content/uploads/elementor/thumbs/aws_bp_logos_primary_c490b2b5-qmxjyr9esm130zlsi852shkzqy5somywfhttooden2.png"
    "https://twnog.net/wp-content/uploads/2024/04/ODC-Vertical-300x300.png"
    "https://twnog.net/wp-content/uploads/elementor/thumbs/BBIX_logo_RGB_1000_442-qmxjzvoc32gyakpamuv6xtceojkvc5h7rtictswgdc.png"
    "https://twnog.net/wp-content/uploads/2024/04/ampyrean.jpg"
    "https://twnog.net/wp-content/uploads/2024/04/Equinix.jpg"
    "https://twnog.net/wp-content/uploads/2024/04/ICANN-For-online-use-blue-1024x794.jpg"
    "https://twnog.net/wp-content/uploads/2024/04/SUNeVision_Logo_RGB-1024x633.jpg"
    "https://twnog.net/wp-content/uploads/2024/04/Vantage_Logo-1024x501.jpg"
    "https://twnog.net/wp-content/uploads/2024/04/Blue-1024x177.png"
    "https://twnog.net/wp-content/uploads/elementor/thumbs/ocf-final-qn65az3c874h7fzpnqnlvuvljnmz65i9a1duneorse.png"
    "https://twnog.net/wp-content/uploads/elementor/thumbs/isocTP-qmxkjvorxvebmpac06gu5po70oivw1coffeyon5dmk.jpg"
    "https://twnog.net/wp-content/uploads/2024/04/TSTA.jpg"
)

# 下載每個 URL
for url in "${urls[@]}"; do
    echo "Downloading: $url"
    wget -q --show-progress -P "$download_dir" "$url"
done

echo "All files downloaded to $download_dir"
