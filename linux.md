


curl -L -s https://something.asdf/install.sh | bash /dev/stdin



## `/usr/bin` && `/usr/local/bin`

`/usr/bin`: contains executable programs that are part of the operating system and installed by its package manager

`/usr/local/bin` : default location for executable programs not part of the operating system and installed there by the local administrator, usually after building them from source with the sequence `configure`;`make`;`make install`. The goal is not to break the system by overwriting a functional program by a dysfunctional or one with a different behavior.

When the same program exists in both directories, you can select which ones will be called by default by rearranging the order of the directories in your `PATH`.

> https://unix.stackexchange.com/questions/259231/difference-between-usr-bin-and-usr-local-bin