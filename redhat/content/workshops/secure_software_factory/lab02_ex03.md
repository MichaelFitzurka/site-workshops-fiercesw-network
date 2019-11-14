---
title: Lab 2, Exercise 3 - Provision a Che IDE
workshops: secure_software_factory
workshop_weight: 19
layout: lab
---

# Cloud-native IDE with Eclipse Che

You could easily modify the files via the GitHub Web UI, or alternatively we can provision a web-based IDE that will operate multiple workspaces, integrate with OpenShift, GitHub, and more, and otherwise present a better developer experience.


{{< twoSideStep title="1. Navigate to your User Dev project" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/createCheProject.png" title="Create a new Project for Che" >}}
                {{< figureImage src="../images/enterCheProject.png" title="Load your Che Project" >}}
                {{< figureImage src="../images/selectProjectAction.png" title="Click 'Select from Project'" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="2. Order Che from the [Shared] Team Resources Project" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/selectedCheOption.png" title="Order a Che environment" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="3. Load Eclipse Che" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/cheIsDeployed.png" title="A completed Che Deployment Config - click the Route" >}}
                {{< figureImage src="../images/emptyChe.png" title="A new instance of Che will greet you with the New Workspace Wizard" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="4. Create Workspace" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/createCheWorkspace.png" title="Set your configuration as such, substituting your fork of the repo" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="5. Open and Start the Workspace" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/cheClickOpen.png" title="Click the Open button" >}}
                {{< figureImage src="../images/cheClickStartWorkspace.png" title="Start your workspace" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        </div>
{{< /twoSideStep >}}


{{< importPartial "footer/footer.html" >}}
