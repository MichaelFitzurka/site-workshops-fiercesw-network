---
title: Lab 2, Exercise 2 - Fork it like Daft Punk
workshops: secure_software_factory
workshop_weight: 18
layout: lab
---

# Fork the Secure Software Factory Application
A proper DevSecOps workflow revolves around GitOps.  To progress through this workshop you will need a personal GitHub account in order to fork the repository.  By forking the Secure Software Factory repository you will be able to modify the code, integrate web hooks, and more.

{{< twoSideStep title="1. Log into GitHub" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/gitHubFrontPage.png" title="Git on the Hub" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        We are going to do some integration and coding with an external git repository.  For this lab we are going to use GitHub, if you don't already have an account, [you can create one here][1].

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="2. Fork the repository" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/forkItGood.png" title="Make your own copy of the code" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        OK, let's fork the Secure Software Factory app from **my** account into **your** GitHub account.  Goto [https://github.com/kenmoini/s2f-tasks-app][2] and look to the top right for the "Fork" button, and click it.

        Once it completes, GitHub should redirect you to the newly created fork of the source code in your account.

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="3. Primary concerns and components" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/repoFileListing.png" title="A few key files to note" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

          Like any good Git repo, this is organized in a simple and easy to navigate fashion where all the logical concerns are separated into different atomic components.

          <ul>
            <li><strong><em>Jenkinsfile</em></strong> - This is a text file that contains the pipeline definition for Jenkins.</li>
            <li><strong><em>openshift/build-config-pipeline.yaml</em></strong> - This is a yaml text file that defines the pipeline for OpenShift, used in conjuction with the Jenkinsfile.</li>
            <li><strong><em>src/</em></strong> - This directory, contains the source code for the application.</li>
            <li><strong><em>configuration/</em></strong> - This directory, contains other configuration files for tools used throughout the CI/CD process, such as Nexus and Red Hat.</li>
          </ul>

        </div>
{{< /twoSideStep >}}

[1]: https://github.com/join?source=header-home
[2]: https://github.com/kenmoini/s2f-tasks-app.git

{{< importPartial "footer/footer.html" >}}
