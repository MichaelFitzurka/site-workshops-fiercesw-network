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

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="2. Fork the repository" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/forkItGood.png" title="Make your own copy of the code" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="3. Primary concerns and components" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/repoFileListing.png" title="A few key files to note" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

          Like any good Git repo, this is organized in a simple and easy to navigate fashion where all the logical concerns are separated into different atomic components.

          <ul>
            <li><strong><em>Jenkinsfile</em></strong> - This file, blah blah blah...</li>
            <li><strong><em>openshift/build-config-pipeline.yaml</em></strong> - This file, blah blah blah...</li>
            <li><strong><em>src/</em></strong> - This directory, blah blah blah...</li>
            <li><strong><em>configuration/</em></strong> - This directory, blah blah blah...</li>
          </ul>

        </div>
{{< /twoSideStep >}}


{{< importPartial "footer/footer.html" >}}
