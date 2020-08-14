


# runtime dependencies
# sudo apt install adb -- ya dentro del sdk de android
sudo apt install ffmpeg libsdl2-2.0-0 

# 2 megas

# client build dependencies
sudo apt install gcc git pkg-config meson ninja-build \
                 libavcodec-dev libavformat-dev libavutil-dev \
                 libsdl2-dev

# 14 megas

git clone git@github.com:Genymobile/scrcpy.git


meson x --buildtype release --strip -Db_lto=true -Dprebuilt_server=~/Repositories/github/scrcpy-server-v1.14
meson x --buildtype release --strip -Db_lto=true -Dprebuilt_server=../scrcpy-server-v1.14
meson x --reconfigure --buildtype release --strip -Db_lto=true -Dprebuilt_server=../scrcpy-server-v1.14
ninja -Cx

# install
sudo ninja -Cx install


scrcpy --turn-screen-off --bit-rate 16M -m 1560 --fullscreen

scrcpy --turn-screen-off --bit-rate 8M -m 1024

scrcpy --bit-rate 8M -m 1024 --fullscreen
scrcpy --bit-rate 6M -m 1024 --fullscreen

scrcpy --bit-rate 8M --max-size 800
scrcpy -b4M -m1024 --max-fps 30


adb tcpip 5555
adb connect 192.168.1.22:5073
12962


Just run your build command (e.g. ninja) and Meson will regenerate as necessary.
If ninja fails, run "ninja reconfigure" or "meson --reconfigure"
to force Meson to regenerate.

If build failures persist, run "meson setup --wipe" to rebuild from scratch
using the same options as passed when configuring the build.
To change option values, run "meson configure" instead.
