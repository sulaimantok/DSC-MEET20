# Setting up a Python development environment on Windows

### Objectives

- Install the latest version of Python.
- Use venv to isolate dependencies.
- Install an editor (optional).
- Install the Cloud SDK (optional).
- Install the Cloud Client Libraries for Python (optional).
- Install other useful tools.

### Step

1. To install Python in a Windows environment, download the installers for the latest versions of Python from the [Python website](https://www.python.org/downloads/windows/)

2. To access your version of Python, use [Python launcher for Windows](https://docs.python.org/3/using/windows.html#launcher)

To start the latest version of Python you installed, run the following command:
```
py
```

To start the latest version of Python 3 you installed, run the following command:

```
py -3
```

To verify the version of pip that is available, run the following command:

```
pip --version
```

### Installing the Cloud Client Libraries for Python

```
pip install --upgrade google-cloud-storage
```