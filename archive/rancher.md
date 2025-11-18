
## Rancher Desktop

- helm
- kubectl
- nerdctl
- docker (moby)


```bash
brew install --cask rancher
```

> It's seems there is no "/var/run/docker.sock". In that case, you need to configure rancher desktop. On preferences [Application] -> [Behavior] -> Check [Administrative Access] then application will be restarting. after restarting rancher desktop, you can find "/var/run/docker.sock".
