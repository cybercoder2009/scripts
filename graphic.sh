# check graphic cards
lshw -numeric -C display

# disable nouveau
sudo nano /etc/modprobe.d/blacklist.conf
blacklist vga16fb
blacklist nouveau
blacklist rivafb
blacklist rivatv
blacklist nvidiafb



