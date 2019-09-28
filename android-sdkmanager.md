## SDK Manager

```
~/Android/Sdk/tools/bin/sdkmanager
```

## update

```
sdkmanager --update
```

```
sdkmanager --list
```





# Issues

```bash
cd Android/tools/bin
mkdir jaxb_lib

wget http://central.maven.org/maven2/javax/activation/activation/1.1.1/activation-1.1.1.jar -O jaxb_lib/activation.jar
wget http://central.maven.org/maven2/javax/xml/jaxb-impl/2.1/jaxb-impl-2.1.jar -O jaxb_lib/jaxb-impl.jar
wget http://central.maven.org/maven2/org/glassfish/jaxb/jaxb-xjc/2.3.2/jaxb-xjc-2.3.2.jar -O jaxb_lib/jaxb-xjc.jar
wget http://central.maven.org/maven2/org/glassfish/jaxb/jaxb-core/2.3.0.1/jaxb-core-2.3.0.1.jar -O jaxb_lib/jaxb-core.jar
wget http://central.maven.org/maven2/org/glassfish/jaxb/jaxb-jxc/2.3.2/jaxb-jxc-2.3.2.jar -O jaxb_lib/jaxb-jxc.jar
wget http://central.maven.org/maven2/javax/xml/bind/jaxb-api/2.3.1/jaxb-api-2.3.1.jar -O jaxb_lib/jaxb-api.jar
```

Add to `sdkmanger` and `avdmanager` script (in the corresponding line)

```
CLASSPATH=$CLASSPATH:$APP_HOME/bin/jaxb_lib/activation.jar:$APP_HOME/bin/jaxb_lib/jaxb-impl.jar:$APP_HOME/bin/jaxb_lib/jaxb-xjc.jar:$APP_HOME/bin/jaxb_lib/jaxb-core.jar:$APP_HOME/bin/jaxb_lib/jaxb-jxc.jar:$APP_HOME/bin/jaxb_lib/jaxb-api.jar
```

