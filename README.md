# Docker Alpine Dropbear
Container running Alpine Linux with Dropbear SSH

#### Dropbear SSH Configuration:

* Port: 22
* Host Key Path: /etc/dropbear/
* Disabled Settings:
  * Password Logins (Root & Any User)
  * Local Port Forwarding
  * Remote Port Forwarding


#### Installed Packages:

* Dropbear SSH
* Supervisor


#### Usage:

1. Paste your SSH public key in `files/ssh/authorized_keys`
2. Edit `docker-compose.yml`
3. Run `docker-compose up -d`
