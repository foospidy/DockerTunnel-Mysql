# DockerTunnel-Mysql
Docker build for SSH tunneling to a Mysql server.


## Instructions

Add an SSH `config` file and private SSH key for your Mysql server to your `$HOME/.ssh` directory. The contents of the 
`config` file should be:

```
Host mysql-tunnel
  HostName mysql.example.com
  Port 22
  IdentityFile ~/.ssh/id_rsa_mysql
  User example_user
  ForwardAgent yes
  TCPKeepAlive yes
  ConnectTimeout 5
  ServerAliveCountMax 10
  ServerAliveInterval 15
```

Note: you should update the HostName, Port, IdentityFile, and User values above as needed.
