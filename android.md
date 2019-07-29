 
# Android

## Emulator

```
~/Android/Sdk/tools/emulator
```

```bash
emulator -list-avds
```

```bash
emulator -netdelay none -netspeed full -avd <avd_name>
```


### Optirun

```bash
optirun emulator -avd Nexus_S_API_26
```

## sdkmanager

```
~/Android/Sdk/tools/bin/sdkmanager
```


```bash
sdkmanager "system-images;android-26;google_apis_playstore;x86"
```