---
title: Login Tour - WebSSH Terminal
workshops: secure_software_factory
workshop_weight: 3
layout: lab
---

# Introduction to the WebSSH Terminal

This lab provides a quick tour of the browser based SSH client to help you get familiar with lab environment along with some key terminology we will use in subsequent lab content.

The WebSSH Terminal is provided as an "orderable" application in OpenShift.

## Accessing the WebSSH Terminal

In order to access the WebSSH Terminal, you need to log into the OpenShift cluster via the Web UI at the following address:

```bash
{{< urifqdn_s2f "https://master." "" >}}
```

### Login Info

Your workshop proctor will provide the login information.

```bash
login:    <Instructor Provided>
Password: <Instructor Provided>
```

After logging in, you should be presented with the OpenShift Web Console.

-INSERT PICTURE OF PROJECT LISTINGS-

## Create a Project for you Terminal

Once logged in, click on the ***Create Project*** button, and create a new project named ```{{< user_info "user" "-terminal" >}}```.

<img src="../images/createTerminalProject.png" width="450"><br/>

Enter the Project you just created.

<img src="../images/userTermProject.png" width="600"><br/>

## Order your WebSSH Terminal

Upon entering your created terminal Project, click the ***Select from Project*** button.

<img src="../images/inBlankTerminalProject.png" width="600"><br/>

Next, select from the dropdown select the ***[Shared] Team Resources*** Project, click on ***Workshop Terminal*** and click ***Next***.

<img src="../images/selectedTerminalCatalogOffering.png" width="600"><br/>

Continue to click ***Next***, there's no need to modify any parameters so simple click ***Create***, and ***Create Anyway*** in order to deploy your WebSSH Terminal.

Within a few moments, you should have a WebSSH Terminal available.  Once the Pod is launched, click on the **Route** in order to launch the terminal.

<img src="../images/terminalPodRunning.png" width="600"><br/>

The terminal container is integrated with OpenShift OAuth and will prompt you for your login credentials and access scoped to your *user:info* before redirecting to the terminal.

<img src="../images/oauthLogin.png" width="600"><br/>
<img src="../images/oauthScopeForTerminal.png" width="600"><br/>

The WebSSH Terminal instance will already have the 'oc' command installed with other useful tools. The '***oc***' command is used to connect to the OpenShift Master.

<img src="../images/newTerminalScreen.png" width="600"><br/>


{{< importPartial "footer/footer.html" >}}
