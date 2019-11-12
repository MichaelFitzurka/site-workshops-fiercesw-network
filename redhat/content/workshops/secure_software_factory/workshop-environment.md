---
title:  Workshop Environment
workshops: secure_software_factory
workshop_weight: 14
layout: lab
---

# Workshop Environment

This workshop will take you through a number of exercises, labs, projects, and vendor solutions.  Before we get started with building applications, containers, and pipelines, let us review the different resources and components in our environment.

As part of this lab we'll be using using [Pipelines in OpenShift][1] for CI/CD, which gives you control over building, deploying, and promoting your applications on OpenShift.  Using a combination of the Jenkins Pipeline Build Strategy, Jenkinsfiles, and the OpenShift Domain Specific Language (DSL) (provided by the OpenShift Jenkins Client Plug-in), you can create advanced build, test, deploy, and promote pipelines for any scenario.

After running the first Pipeline in OpenShift, this course will step you through deploying a Pipeline on a Team Master that's managed by CloudBees Core, and then an integrated Pipeline that leverages the best of both CloudBees Core and OpenShift.

## Projects

Upon logging into OpenShift you'll find a number of pre-provisioned Projects available to your user - you may need to click the ***View All*** link to view all the available Projects.

<img src="../images/userDefaultProjects.png" width="600"><br/>

- **[Shared] Central CI/CD** - This Project is shared among the workshop users and powers the CI/CD platform.  Here you'll find CloudBees Core, a managed Team Master, Sonatype Nexus & IQ Server, SonarQube, and other components to orchestrate our pipelines.
- **[Shared] ChatOps** - Here we have a Rocket.Chat server deployed to implement ChatOps - what DevOps workshop is complete without an Open-Source Slack alternative?
- **[Shared] Team Resources** - This is a Project that provides the workshop team a set of shared resources that can easily be self-provisioned such as a Demo App & Pipeline, Eclipse Che for a cloud-based IDE, and the Workshop Terminal
- **Tasks - Production**, **Tasks - Stage**, & **Tasks - Test** - These namespaces are pre-provisioned and empty, though have the required Roles and Service Accounts needed to operate in and out of the various namespaces.
- **User Dev** - This will be where your tools such as Eclipse Che and various pipelines will actually be deployed into.

Once inside the **[Shared] Central CI/CD**, you will see the following pods running.  All of these pods are leveraged in building our application.

- nexus pod - Sonatype Nexus is an artifact repository.
- nexus-iq-server - IQ Server extends Sonatype Nexus with auditing, policy, and more.
- cjoc - CloudBees Enterprise Jenkins is an enterprise CI/CD platform power by Jenkins.
- sonarqube - SonarQube is an open source static code analysis tool.

<img src="../images/central-cicdoverview.png" width="900"><br/>

# The Flow of the Trusted Software Supply Chain

- CloudBees Enterprise Jenkins is the CI/CD tool that will execute the project.
- The Code is cloned from GitLab onto the CloudBees Enterprise Jenkins Executor Node.
- The Code is built by CloudBees Enterprise Jenkins using Maven.
- JUnit Test are executed against the source code.
- In parallel, the source code is analyzed for vulnerabilities, bugs, and bad patterns by SonarQube.
- The WAR artifact is pushed to Nexus Repository manager.
- A container image (tasks:latest) is built based on the tasks application WAR artifact deployed on JBoss EAP.
- The tasks container image is deployed in a fresh container in DEV project.
- The DEV image is tagged with the application version (tasks:7.x) in the STAGE project.
- The staged image is deployed in a fresh container into the STAGE project.

<br>
<img src="../images/pipeline.png" width="900"><br/>

[1]: https://docs.openshift.com/container-platform/3.11/dev_guide/openshift_pipeline.html

{{< importPartial "footer/footer.html" >}}
