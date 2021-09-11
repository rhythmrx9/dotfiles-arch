sudo ip link set wlp2s0 down
sudo ip link set wlp2s0 up
sudo wpa_supplicant -B -i wlp2s0 -c /etc/wpa_supplicant.conf -Dnl80211 ,wext
sudo dhclient wlp2s0
