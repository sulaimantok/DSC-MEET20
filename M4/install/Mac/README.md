# Setting up a Python development environment on Mac

### Objectives

- Install the latest version of Python.
- Use venv to isolate dependencies.
- Install an editor (optional).
- Install the Cloud SDK (optional).
- Install the Cloud Client Libraries for Python (optional).
- Install other useful tools.

### Step

1. To use homebrew to install Python packages, you need a compiler, which you can get by installing

```
xcode-select --install
```

2. Install homebrew by following the instructions on the [homebrew homepage](https://brew.sh/), and then use homebrew to install Python as follows:

```
brew install python
```

3. Verify machine already install python and pip

```
python --version
```

```
pip --version
```

### Installing the Cloud Client Libraries for Python

```
pip install --upgrade google-cloud-storage
```