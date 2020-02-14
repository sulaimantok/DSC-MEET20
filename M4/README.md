# How to delploy your Apps using App Engine

## Overview

![Sample_use_case](images/M4-4.png)
Build and deploy applications on a fully managed platform. Scale your applications seamlessly from zero to planet scale without having to worry about managing the underlying infrastructure. With zero server management and zero configuration deployments, developers can focus only on building great applications without the management overhead. App Engine enables developers to stay more productive and agile by supporting popular development languages and a wide range of developer tools.

- Open and familiar languages and tools
![Multilanguage](images/M4-1.png)
Quickly build and deploy applications using many of the popular languages like Java, PHP, Node.js, Python, C#, .Net, Ruby, and Go or bring your own language runtimes and frameworks if you choose. Get started quickly with zero configuration deployments in App Engine. Manage resources from the command line, debug source code in production, and run API backends easily, using industry-leading tools such as Cloud SDK, Cloud Source Repositories, IntelliJ IDEA, Visual Studio, and PowerShell.

- Just add code
![Just_add](images/M4-2.png)
Focus just on writing code, without the worry of managing the underlying infrastructure. With capabilities such as automatic scaling-up and scaling-down of your application between zero and planet scale, fully managed patching and management of your servers, you can offload all your infrastructure concerns to Google. Protect your applications from security threats using App Engine firewall capabilities, identity and access management (IAM) rules, and managed SSL/ TLS certificates.

- Pay only for what you use
![Pay](images/M4-3.png)
Choose to run your applications in a serverless environment without the worry of over or under provisioning. App Engine automatically scales depending on your application traffic and consumes resources only when your code is running. You will only need to pay for the resources you consume.

## Features

- Popular languages
- Open and flexible
- Fully managed
- Monitoring, logging, and diagnostics
- Application versioning
- Traffic splitting
- Application security
- Services ecosystem


## Before You begin

1. Download and install Google sdk [Download dan Install](https://cloud.google.com/sdk/docs/)
2. If you already Install, update component
```
gcloud components update
```
3. Create new Project or use already Project
- Create Project
```
gcloud projects create myproject --set-as-default
```

- Set Project

```
 gcloud config set project myproject
```

4. Initialize your App Engine app with your project and choose its region:
```
gcloud app create --project=myproject
```

5. Install the following prerequisites:
- Git [Download and install](https://git-scm.com/)
- Python3 component on gcloud

```
gcloud components install app-engine-python
```

- Setup your python environment, in local machine
[Linux](Linux/README.md) , [Windows](Windows/README.md), or [MacOs](Mac/README.md)