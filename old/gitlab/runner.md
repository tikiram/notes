


## install runner


> https://docs.gitlab.com/runner/install/linux-repository.html

```bash
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
```

```bash
sudo apt-get install gitlab-runner
```


## disabled shared runners


## registry new runner

> https://docs.gitlab.com/runner/register/index.html

```bash
sudo gitlab-runner register
```

commands: shell


## gitlab-ci.yml


job1:
	stage: build
	script: asdfsd
	only:
		refs:
			- master
	tags:
		- runnerPractica


su chmod 666 /var/run/docker.sock


ingresarr
W0sYi2oe%D8s

5bqCcSvo3zJ&