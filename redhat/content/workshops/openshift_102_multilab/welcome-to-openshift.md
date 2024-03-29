---
title: Login Tour - Welcome to OpenShift
workshops: openshift_102_multilab
workshop_weight: 10
layout: lab
---

# Welcome to OpenShift!
This lab provides a quick tour of the console to help you get familiar with the user interface along with some key terminology we will use in subsequent lab content.

## Key Terms
We will be using the following terms throughout the workshop labs so here are some basic definitions you should be familiar with. You'll learn more terms along the way, but these are the basics to get you started.

* Container - Your software wrapped in a complete filesystem containing everything it needs to run
* Image - We are talking about docker images; read-only and used to create containers
* Pod - One or more docker containers that run together
* Service - Provides a common DNS name to access a pod (or replicated set of pods)
* Project - A project is a group of services that are related logically
* Deployment - an update to your application triggered by a image change or config change
* Build - The process of turning your source code into a runnable image
* BuildConfig - configuration data that determines how to manage your build
* Route - a labeled and DNS mapped network path to a service from outside OpenShift
* Master - The foreman of the OpenShift architecture; the master schedules operations, watches for problems, and orchestrates everything
* Node - Where the compute happens; your software is run on nodes
* Pipeline - Automates the control, building, deploying, and promoting your applications on OpenShift

# Accessing the OpenShift Cluster
OpenShift provides a web console that allows you to perform various tasks via a web browser. Additionally, you can utilize a command line tool to perform tasks. Let's get started by logging into both of these and checking the status of the platform.

Use this URL in your browser to access the OpenShift cluster:

```bash
{{< urifqdn_s2f "https://master." "" >}}
```

<img src="../images/ocp-login.png" width="600"><br/>

## Login Info
Your instructor will provide the login information.

```bash
login:    {{< user_info "user" >}}
Password: <Instructor Provided>
```

Once logged in, you should see a listing of your available personal and team shared Projects.

<img src="../images/userDefaultProjects.png" width="600"><br/>

{{< importPartial "footer/footer.html" >}}
