
# Puppet

> https://www.howtoforge.com/tutorial/ubuntu_puppet/

* Create two droplets
    + master and client

## Edit hosts in every machine

```
nano /etc/hosts
```

```
134.209.33.20 puppetmaster puppet
```

## Master

* host-name: `puppet-master`
* 2 GB Ram required
* ip: 134.209.33.20

```bash
ssh root@134.209.33.20
```

```bash
apt-get update -y
```

### Install

```bash
wget https://apt.puppetlabs.com/puppet6-release-focal.deb
dpkg -i puppet6-release-focal.deb
apt-get update -y
apt-get install puppetserver -y

systemctl start puppetserver
systemctl enable puppetserver
systemctl status puppetserver
```

### Change memory allocation (optional)

```bash
nano /etc/default/puppetserver
```
```
JAVA_ARGS="-Xms1g -Xmx1g -Djruby.logger.class=com.puppetlabs.jruby_utils.jruby.Slf4jLogger"
```

## Client

* host name: `puppet-client-01`
* ip: 104.131.178.176

```bash
ssh root@104.131.178.176
```

### Install

```bash
wget https://apt.puppetlabs.com/puppet6-release-focal.deb
dpkg -i puppet6-release-focal.deb
apt-get update -y
apt-get install puppet-agent -y
```

```bash
nano /etc/puppetlabs/puppet/puppet.conf
```

```
[main]
certname = puppetclient-01-cert-name
server = puppet
```

```bash
systemctl start puppet
systemctl enable puppet
systemctl status puppet
```


## Sign clients

```bash
ssh root@134.209.33.20
```

```bash
/opt/puppetlabs/bin/puppetserver ca list
/opt/puppetlabs/bin/puppetserver ca sign --all
```

## Check from client

```bash
/opt/puppetlabs/bin/puppet agent --test
```

---

## Manifest

> https://www.digitalocean.com/community/tutorials/configuration-management-101-writing-puppet-manifests

The default main manifest file is located at `/etc/puppet/manifests/site.pp`

```bash
nano /etc/puppetlabs/code/environments/production/manifests/site.pp
```


```
exec { 'update':
    command => '/usr/bin/apt-get update'
}

package { 'python-software-properties':
    ensure => 'installed'
}
exec { 'add-repository':
    command => '/usr/bin/add-apt-repository ppa:ondrej/php5 -y'
    require => Package['python-software-properties']
}

package { 'curl':
    ensure => 'installed'
    before => Exec['install script']
}
exec { 'install script':
    command => '/usr/bin/curl http://example.com/some-script.sh'
}

$package = "vim"

package { $package:
   ensure => "installed"
}
```



## Real Example

```puppet
package { 'docker.io':
    ensure => 'installed'
}

package { 'docker-compose':
    ensure => 'installed',
    require => Package['docker.io']
}

exec { 'clean':
    command => '/usr/bin/rm -rf sa-01',
    onlyif => '/bin/ls sa-01',
    logoutput => true,
    before => Exec['clone']
}

exec { 'clone':
    command => '/usr/bin/git clone https://github.com/Tikiram/sa-01.git',
    unless => "/bin/ls sa-01",
    require => Package['docker.io'],
    logoutput => true
}

exec { 'run':
    command => '/usr/bin/docker-compose -f ./sa-01/docker-compose.yml up --build -d',
    require => exec['clone'],
    logoutput => true
}
```