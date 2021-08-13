# Youtube-dl

## install

```bash
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
```

```bash
sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl
hash -r
```

## Commands

```bash
sudo youtube-dl -U
```

Lists all available formarts
```bash
youtube-dl -F
```

Select a format to download
```bash
youtube-dl <youtube-url> -f 22
```


> https://github.com/ytdl-org/youtube-dl/blob/master/README.md