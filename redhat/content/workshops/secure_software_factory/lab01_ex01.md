---
title: Lab 1, Exercise 1 - OpenShift, OSS Jenkins, and Slide Decks
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

{{< twoSideStep title="1. Create a Project" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/userSlideProject.png" title="Create a new project for this application" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        At the main OpenShift Web Console, click on the ***Create Project*** button, and create a new project named ```{{< user_info "user" "-slides" >}}```.  Click ***Create*** and enter the project you just created.

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="2. Order Slides application from [Shared] Team Resources" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/getStartedWithYourProject.png" title="A new and blank project" >}}
                {{< figureImage src="../images/selectSlidesOption.png" title="Select the Slide Deck catalog item" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        Next, click the ***Select from Project***, select the ***[Shared] Team Resources*** Project, and then choose the ***Workshop Demo - Slide Deck*** catalog option.

        Click ***Next*** and then click ***Create***.

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="3. Integrated Jenkins" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/jenkinsEphemeral.png" title="Built-in ephemeral Jenkins deploying after a Jenkins-type Build Pipeline was detected in this Project" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        Now that you have ordered and provisioned the Demo Slides App & Pipeline from the shared Project, you will find that OpenShift will automatically deploy an ephemeral Jenkins server when it detects a Jenkins-based Pipeline manifest.  Give the Jenkins Pods a few moments to start.

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="4. Navigate to Pipelines" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/selectPipelineForDA1.png" title="Browse to Pipelines" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        Once the Jenkins pod has started, start the Pipeline.  To do so, in the left hand pane, browse over to ***Builds > Pipelines***

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="5. Start Pipeline" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/startDemoAppPipeline.png" title="Start the Pipeline" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        In the Pipelines listing, you should see the Pipeline that was ordered ***site-demo-app-slide-deck-pipeline***.  Simply click ***Start Pipeline*** to begin the building process.

        With the Pipeline started, continue to the next exercise.

        </div>
{{< /twoSideStep >}}


[1]: https://revealjs.com/

{{< importPartial "footer/footer.html" >}}
