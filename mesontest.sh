mkdir /usr/local/shelltest
touch mesontest.sh
vim mesontest.sh
#!/bin/bash
wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn
sudo ./meson_cdn config set --token=lbbgsatngbqmtmpeazbyjtll --https_port=443 --cache.size=30
sudo ./service start meson_cdn

