

lpstat -p

lpoptions -d Printer_Name
lpoptions -d EPSON_L4260_Series
lpoptions -d EPSON_L4260_Series_2 -l
lpoptions -d EPSON_L4260_con_driver -l


Run lpstat -v

•	If the path starts with dnssd:// or ipp://, you are using a network driver that might have limited "positioning" support.

If you see a specific manufacturer path (e.g., /Library/Printers/...), the position flag has a much higher chance of working.