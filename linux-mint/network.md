

kbps = 1000 bits per second (decimal meaning of K)

KBps = 1024 byte per second (powers of 2 meaning of K)


lowercase k to indicate that is decimal or K
uperrcase k or Ki to indicate powers of 2
(k, K)
(K, Ki)


KiB/s

1024 * 8 = 8192


4 Mbps = 4 * 1024 * 1 = 4048 Kbits / s
5 Mbps = 5 * 1024 * 1 = 5120 Kbits / s = 5120 
1 KiB/s = 1 * 1024 * 8 = 8192 bits / s

640 KiB/s --> to Kbps (Kibs)

=========================================================

| monitor   |      wondershaper    |      megas           |
| ----------| -------------------- | -------------------- |
| 640 KiB/s | 640 * 8 = 5120 Ki bs |  5 Mi bs ( 5 megas ) |
| 312 KiB/s | 312 * 8 = 2496 ki bs |  2.4375 Mi bs        |
| 300 KiB/s | 300 * 8 = 2400 Ki bs |  2.3468 Mi bs        |

----------------------------------------------------------

## Wondershaper

```bash
ifconfig
```
enp4s0

```bash
sudo apt install wondershaper
```

// Speed in Kbps

```bash
sudo wondershaper enp4s0 2400 2400
sudo wondershaper wlp5s0 2400 2400
sudo wondershaper clear enp4s0
sudo wondershaper clear wlp5s0
```


> https://www.tecmint.com/wondershaper-limit-network-bandwidth-in-linux/

## Nethogs

```bash
sudo apt install nethogs
```

Use `ifconfig` to see what interface to monitor.

```bash
sudo nethogs wlp5s0
# you can press `m` key to switch views
```