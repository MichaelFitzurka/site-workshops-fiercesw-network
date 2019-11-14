---
title: Login Tour - Creating your WebSSH Terminal
workshops: openshift_102_multilab
workshop_weight: 11
layout: lab
---

# Introduction to the WebSSH Terminal
In order to access the command line interface (CLI) for OpenShift, you need a terminal environment with the OpenShift client loaded.  To simplify access for everyone, this workshop provides a WebSSH Terminal as an "orderable" application from within OpenShift.

## Create a Project for your Terminal
From the OpenShift Web Console, click on the ***Create Project*** button, and create a new project named ```{{< user_info "user" "-terminal" >}}```.

<img src="../images/createTerminalProject.png" width="450"><br/>

Enter the Project you just created.

<img src="../images/userTermProject.png" width="600"><br/>

## Order your WebSSH Terminal
Upon entering your created terminal Project, click the ***Select from Project*** button.

<img src="../images/inBlankTerminalProject.png" width="600"><br/>

Next, in the ***Select from Project*** dropdown, select the ***[Shared] Team Resources*** Project, click on ***Workshop Terminal*** and click ***Next***.

<img src="../images/selectedTerminalCatalogOffering.png" width="600"><br/>

Click ***Next*** again to continue.  There's no need to modify any parameters so simply click ***Create***, and ***Create Anyway*** in order to deploy your WebSSH Terminal.  And click ***Close*** to finish.

Within a few moments, you should have a WebSSH Terminal available.  Once the Pod is launched, click on the **Route** in order to launch the terminal.

<img src="../images/terminalPodRunning.png" width="600"><br/>

The terminal container is integrated with OpenShift OAuth and will prompt you for your same login credentials and access scoped to your *user:info* before redirecting to the terminal.

<img src="../images/oauthLogin.png" width="600"><br/>

Click ***Allow selected permissions*** to continue.

<img src="../images/oauthScopeForTerminal.png" width="600"><br/>

The WebSSH Terminal instance will already have the 'oc' command installed with other useful tools. The '***oc***' command is used to connect to the OpenShift Master.

<img src="../images/newTerminalScreen.png" width="600"><br/>

{{< importPartial "footer/footer.html" >}}
