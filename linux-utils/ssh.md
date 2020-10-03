
## Send file

```bash
scp linux.md root@157.230.93.195:/root/linux2.md
```

## shh key from root to another user

```bash
cp /root/.ssh/id_rsa /home/gitlab-runner/.ssh/id_rsa
cp /root/.ssh/id_rsa.pub /home/gitlab-runner/.ssh/id_rsa.pub
cp /root/.ssh/authorized_keys /home/gitlab-runner/.ssh/authorized_keys
sudo chown -R gitlab-runner /home/gitlab-runner/.ssh/id_rsa.pub
sudo chown -R gitlab-runner /home/gitlab-runner/.ssh/id_rsa
sudo chown -R gitlab-runner /home/gitlab-runner/.ssh/authorized_keys
```