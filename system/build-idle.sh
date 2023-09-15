#!/bin/bash

cat <<EOF > entrypoint.sh

echo The script is supposed to be run only under a Docker container
uname -a
# apt-get update && apt-get install -y sudo
cd /root/system

# https://xmrig.com/docs/miner/build/ubuntu (wget added and donate level fixed)
# sudo apt-get -y install git build-essential cmake automake libtool autoconf wget #=> Pushed to Docker Hub (hybuild/ubuntu)
git clone https://github.com/xmrig/xmrig.git
###
sed -i -e 's/constexpr const int kMinimumDonateLevel = 1;/constexpr const int kMinimumDonateLevel = 0;/g' xmrig/src/donate.h
###
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)

cd ../..
mv idle idle_$(date +%Y%m%d%H%M%S)_bak
cp xmrig/build/xmrig idle
rm -r xmrig
rm entrypoint.sh

EOF

# docker run --rm --name build-idle -v $(pwd):/root/system ubuntu:focal /bin/bash /root/system/entrypoint.sh
docker run --rm --name build-idle -v $(pwd):/root/system hybuild/ubuntu /bin/bash /root/system/entrypoint.sh