---
title: Lab 1, Exercise 1 - OSS Jenkins and OpenShift
workshops: secure_software_factory
workshop_weight: 15
layout: lab
---

# Built-in OSS Jenkins
Red Hat OpenShift provides a curated version Jenkins.  It can be integrated with OpenShift in 3 ways.  First, you'll be working with a containerized OSS Jenkins Server that's fully integrated with OpenShift.

<img src="../images/jenkins_integrated.png" width="900" />

# Order the Demo App - Slides

The first application and pipeline that we'll be building today is a NodeJS-based Slideshow platform called [RevealJS][1].
To build the application and drive the pipeline we'll use the integrated OSS Jenkins-as-a-Service.

## 1. Create a Project

At the main OpenShift Web Console, click on the ***Create Project*** button, and create a new project named ```{{< user_info "user" "-slides" >}}```.  Click ***Create*** and enter the project you just created.

<img src="../images/userSlideProject.png" width="600" />

## 2. Order Slides application from [Shared] Team Resources

Next, click the ***Select from Project***, select the ***[Shared] Team Resources*** Project, and then choose the ***Workshop Demo - Slide Deck*** catalog option.

<img src="../images/getStartedWithYourProject.png" width="600" />
<img src="../images/selectSlidesOption.png" width="600" />

Click ***Next*** and then click ***Create***.

## 3. Integrated Jenkins

Now that you have ordered and provisioned the Demo Slides App & Pipeline from the shared Project, you will find that OpenShift will automatically deploy an ephemeral Jenkins server when it detects a Jenkins-based Pipeline manifest.  Give the Jenkins Pods a few moments to start.

<img src="../images/jenkinsEphemeral.png" width="900" />

## 4. Navigate to Pipelines

Once the Jenkins pod has started, start the Pipeline.  To do so, in the left hand pane, browse over to ***Builds > Pipelines***

<img src="../images/selectPipelineForDA1.png" width="900" />

## 5. Start Pipeline

In the Pipelines listing, you should see the Pipeline that was ordered ***site-demo-app-slide-deck-pipeline***.  Simply click ***Start Pipeline*** to begin the building process.

<img src="../images/startDemoAppPipeline.png" width="900" />

With the Pipeline started, continue to the next exercise.


[1]: https://revealjs.com/

{{< importPartial "footer/footer.html" >}}
