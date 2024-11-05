


# Network   

## wifi connection
nmtui

## git proxy    

```
git config --global http.proxy http://127.0.0.1:yourport (use clash)
```
# Auto mount and symbolic link

## systemctl
Build H.mount on /etc/systemd/system 
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
Find device's UUID 
```
sudo blkid
```

Enable and restart systemctl service 
```
sudo systemctl enable H.mount 
sudo systemctl restart H.mount
```

## flexible link
Tips: set same name 
```
ln -s /H /Desktop/H
```

# ssh
test 
```
ssh -T git@github.com
``` 

### get new ssh keys and put .pub to github

```
ssh-keygen -t rsa -b 4096 -C "github@github.com" 

``` 

本地提交失败：之前git clone了一个库，在github线上编辑提交了几次，电脑端编辑的内容无法提交，提示（hint）本地落后于线上
git fetch origin 
git pull orgin main 

## docker proxy 
- config docker service 
    where is docker.service
```
sudo systemctl status docker 

```

- add the proxy configuration in 'Service' module and Restart service
```
[Service]
Environment="HTTP_PROXY=http://direction:port" # 
Environment="HTTPS_PROXY=http://direction:port" # 
```
```
sudo systemctl daemon-reload
sudo systemctl restart docker
docker info
```

- test 
```
docker info
```

# China fonts
## fonts displayed error in Pureref software
- waiting for its new version, [can't slove it temporarily](https://www.pureref.com/forum/read.php?5,3510,3633)



- Download of the Win version of PureRef.Appimage and run it with wine
```
nohup wine PureRef.Appimage &
```

# conneting phone with thunar filemanager
  ```
  yay -S libmtp mtpfs
  ```
  
# thunder previews adds-on
yay -S ffmpegthumbnailer poppler-glib webp-pixbuf-loader floderpreview f3d 
