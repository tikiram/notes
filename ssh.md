# SSH

* `ssh-agent`

Useful to handle ssh keys when phrase is required or when ssh forwarding is required, e.g. building a docker image that requires the host ssh keys (`ssh-add`)

* `~/.ssh/config`

The `config` file allows you to create short, memorable aliases for remote hosts. The configuration of a remote host can include extra commands such as ssh through a tunnel.

```bash
ssh alias_name
```

* e.g. alias for private ec2 instance 

```
Host my_ec2
   HostName i-0ad410ccda623a539
   User ubuntu
   ProxyCommand aws ec2-instance-connect open-tunnel --instance-id i-0ad410ccda623a539
```