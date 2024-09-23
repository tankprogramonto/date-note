


# Network   

## wifi connection
nmtui

## git proxy    

```
git config --global http.proxy http://127.0.0.1:yourprot (use clash)
```
# Auto mount and symbolic link

## systemctl
build H.mount on /etc/systemd/system    
```H.mount
[Unit]
Description=My Disk Mount
Requires=mydevice.device
[Mount]
What=UUID="0502a119-5dda-4dbc-bd36-3387972d2b90"
Where="/mnt/I/"
Type=btrfs

[Install]
WantedBy=multi-user.target
```
find device's UUID  
'''
sudo blkid
'''

enable and restart systemctl service 
```
sudo systemctl enable H.mount 
sudo systemctl restart H.mount
```

## symbol link
tips: same name 
```
ln -s /H /Desktop/H
```
