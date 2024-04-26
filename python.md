
# Python - Backend

## Rancher Desktop

- helm
- kubectl
- nerdctl
- docker (moby)


```bash
brew install --cask rancher
```

> It's seems there is no "/var/run/docker.sock". In that case, you need to configure rancher desktop. On preferences [Application] -> [Behavior] -> Check [Administrative Access] then application will be restarting. after restarting rancher desktop, you can find "/var/run/docker.sock".

## Environments

- venv: this tool provides isolated Python environments 
- docker: isolated environment

### Docker

```bash
docker build -t myimage .
docker images

docker run -d -p 5000:5000 p01_image
```

## pip upgrade

```bash
python3 -m pip install --upgrade pip
```

## Django

```bash
python3 -m pip install Django
```

> `python -m pip` vs `pip`: They do exactly the same thing, assuming pip is using the same version of Python as the python executable. The docs for distributing Python modules were just updated to suggest using python -m pip instead of the pip executable, because it allows you to be explicit about which version of Python to use. In systems with more than one version of Python installed, it's not always clear which one pip is linked to.

### Verifying

```python
# python pront
import django
django.get_version()
```

```bash
python3 -m django --version
```

## Modules Folder

- `~/Library/Python/3.9/bin`: executables added by installed modules
- `~/Library/Python/3.9/lib`: installed modules


## Django

```bash
django-admin startproject mysite

python3 manage.py runserver
```

## Python

### Importing

```python
import sound.effects.echo

sound.effects.echo.echofilter(input, output, delay=0.7, atten=4)
```

```python

from sound.effects import echo

echo.echofilter(input, output, delay=0.7, atten=4)
```


```python
from sound.effects.echo import echofilter

echofilter(input, output, delay=0.7, atten=4)
```


```python

from package import *
```
This import will only import the items listed on the `__all__` property


```python
# __init__.py
__all__ = ["echo", "surround", "reverse"]
```


> Although certain modules are designed to export only names that follow certain patterns when you use import \*, it is still considered bad practice in production code. 

> Remember, there is nothing wrong with using from package import specific_submodule! In fact, this is the recommended notation unless the importing module needs to use submodules with the same name from different packages.


## pip-tools

```bash
python3 -m pip install pip-tools
```