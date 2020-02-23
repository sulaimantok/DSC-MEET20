# Setting up a Python development environment on Linux

### Objectives

- Install the latest version of Python.
- Use venv to isolate dependencies.
- Install an editor (optional).
- Install the Cloud SDK (optional).
- Install the Cloud Client Libraries for Python (optional).
- Install other useful tools.

### Step

1. Update and install

```
sudo apt update
sudo apt install python3 python3-dev python3-venv wget

```

2. Install additional components

```
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
```

3. Verify pip installed

```
pip --version
```


### Installing the Cloud Client Libraries for Python

```
pip install --upgrade google-cloud-storage
```