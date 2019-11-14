---
title: Login Tour - OpenShift CLI
workshops: openshift_102_multilab
workshop_weight: 12
layout: lab
---

# Terminal - Let's try the 'oc' command line (CLI) tool
Now that we have a terminal for OpenShift, login using the same URI and user credentials with following command:

```bash
$ oc login {{< urifqdn_s2f "https://master." "" >}}
Authentication required for {{< urifqdn_s2f "https://master." "" >}}:443 (openshift)
 Username: {{< user_info "user" >}}
 Password: <Instructor Provided>
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


## Create a new Project

First let's create a new project to do our workshop work in.  We will use the student number you were given to ensure you don't clash with classmates, so in the steps below replace 'YOUR#' with your student number (if applicable).

> Click on the "Create Project" button and give it a name of demo-{{< span userid "YOUR#" >}}

> Populate "Name" with "demo-{{< span userid "YOUR#" >}}" and populate "Description" boxes with whatever you like.  And click "Create"

This is going to take you to the next logical step of adding something to the project, but we don't want to do that just yet.

> Click the "demo-{{< span userid "YOUR#" >}}" link on the top left to goto your project

Don't worry, it's supposed to look empty right now because you currently don't have anything in your project (we'll fix that in the next lab).

## Let's try the command line (CLI)

> <i class="fa fa-terminal"></i> Open a terminal and login using the same URI with following command:

```bash
$ oc login {{< uriultrashortfqdn "https://" >}}
Authentication required for {{< uriultrashortfqdn "https://" >}} (openshift)
 Username: student-user{{< span "userid" "YOUR#" >}} Password:
Login successful.
```

> <i class="fa fa-terminal"></i> Check to see what projects you have access to:

```bash
$ oc get projects
```

## It looks empty via the command line too
You just created a project using the web console, let's tell the terminal command line tool to use it.

> <i class="fa fa-terminal"></i> Type the following command to use the demo project:

```bash
$ oc new-project demo-{{< span userid "YOUR#" >}}
```

> <i class="fa fa-terminal"></i> Type the following command to show services, deployment configs, build configurations, and active deployments (this will come in handy later):

```bash
$ oc status
```

# Summary
Now that we have logged in you may continue to the next exercise.

{{< importPartial "footer/footer.html" >}}
