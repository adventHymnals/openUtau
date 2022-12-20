!/bin/bash

curl --silent "https://api.github.com/repos/stakira/OpenUtau/releases/latest"|   grep "browser_download_url.*OpenUtau-linux-x64.tar.gz" | head -n 1 | cut -d : -f 2,3 | tr -d \"  | xargs wget -O OpenUtau.tar.gz

mkdir -p openUtau
tar -xf OpenUtau.tar.gz -C openUtau
mv openUtau/OpenUtau  openUtau/openUtau 
rm -rf installer
make