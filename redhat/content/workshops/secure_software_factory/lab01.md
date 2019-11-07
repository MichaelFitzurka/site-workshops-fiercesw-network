---
title: Lab 01 - Welcome to OpenShift
workshops: secure_software_factory
workshop_weight: 11
layout: lab
---

# Welcome to OpenShift!
This lab provides a quick tour of the console to help you get familiar with the user interface along with some key terminology we will use in subsequent lab content.

# Key Terms
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

# Accessing OpenShift
OpenShift provides a web console that allows you to perform various tasks via a web browser.  Additionally, you can utilize a command line tool to perform tasks.  Let's get started by logging into both of these and checking the status of the platform.

## Let's Login to the Web Console
Use your browser to navigate to the URI provided by your instructor and login with the user/password provided.  

```bash
https://master.dso.ocp.demo-dlt.com/
```

<img src="../images/ocp-login.png" width="600"><br/>
*Login Webpage*

Once logged in you should see your available projects - or a button to create a project if none exist already.

## Let's try the 'oc' command line (CLI) tool
Open a terminal and login using the same URI with following command:

```bash
$ oc login https://master.dso.ocp.demo-dlt.com/
Authentication required for https://master.dso.ocp.demo-dlt.com:443 (openshift)
 Username: <student_user_name>
 Password:
Login successful.
```

Check to see what projects you have access to:

```bash
$ oc get projects
```

Type the following command to show services, deployment configs, build configurations, and active deployments (this will come in handy later):

```bash
$ oc status
```

# A Note about Identity Management
A person within your network has a single digital identity, but can have many user accounts to different resources, each with varying access controls per resource.  Identity management is the discipline of administering user access to these resources to keep the overall systems and data secure.

OpenShift can be configured to allow users to register themselves, but when you need your access to be more securely controlled, OpenShift can leverage user authentication with an existing OAuth provider.  For our lab environment, we have secured our users with RHEL's Identity Management (IdM) server.

<img src="../images/idm-users.png" width="600"><br/>

With DevSecOps, the need is high to automate and secure the ever increasing development, test, staging and production infrastructures with a coherent identity management strategy.  IdM provides our environment with Active Directory (LDAP) trusts, multi-product federation, configuration management with Ansible, integrated certificate management, and cybersecurity policy conformance.  All of this is managed within the network from one central location with CLI, Web UI or RPC access.  The IdM server also tightly integrates with DNS record management, which enables greater automation capabilities, and distributes SSH keys to LDAP integrated components, providing a secure way to share keys across environments.

# Summary
You should now be ready to get hands-on with our workshop labs.
