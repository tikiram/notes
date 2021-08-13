 
# Android

## Images

```
~/Android/Sdk/system-images/
```

You can move your images here. Example:

```
~/Android/Sdk/system-images/android-26/google_apis_playstore/x86/
```

### Zip Image Downloaded

> As I found out recently, previous temporary folder destination is located in the `.installer/.installData` file.
The file will be generated in each component. So to change the temporary folder I have had to find every folder `.install` in SDK location and remove them all.

> https://stackoverflow.com/questions/43993410/how-to-change-the-temp-directory-path-of-android-sdk

I found the image zip in `/tmp/PackageOperation02/` with the name `x86-26_r07.zip`, so you can unzip it and place it in the images folder.


## Emulator

```
~/Android/Sdk/tools/emulator
```

```bash
emulator -list-avds
```

### Emulator Turn On

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
### Image Install

```bash
sdkmanager "system-images;android-26;google_apis_playstore;x86"
```