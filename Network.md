# How to setup network during install
- iwctl
- device list
- station device scan
- station device get-networks
- station device connect SSID

# How to connect network after install
- nmcli device
- nmcli device wifi rescan
- nmcli device wifi list
- nmcli device wifi connect SSID-Name password wireless-password
