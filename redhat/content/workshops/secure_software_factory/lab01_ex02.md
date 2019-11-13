---
title: Lab 1, Exercise 2 - OSS Jenkins Gotchas
workshops: secure_software_factory
workshop_weight: 16
layout: lab
---

# Integrated OSS Jenkins
The provided Jenkins in OpenShift is adequate for quick tests and local development proof of concepts.  Outside of that, you'll find a series of issues and problems start to sprawl out of control.

{{< twoSideStep title="1. Failed Pipeline?" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/failedTagPipeline.png" title="Fix the red" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        Eventually you should find yourself with a failed Pipeline.
        <br /><br />
        Click on one of the <strong><em>View Log</em></strong> links to find out what happened.

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="2. Log into Jenkins" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/loginWithOCPOauth.png" title="Integrated OAuth is available in Red Hat OpenShift and used with the built-in Jenkins" >}}
                {{< figureImage src="../images/jenkinsAuthAccess.png" title="Accept the OAuth scopes to continue" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        You'll be prompted to log into Jenkins with your OpenShift credentials.  OpenShift makes OAuth integration with your applications and services very simple, and here we have an implementation with the built-in Jenkins.
        <br /><br />
        Click <strong><em>Log in with OpenShift</em></strong>, provide your OpenShift credentials, accept the <strong><em>Authorize Access</em></strong> screen, and you'll find yourself redirected to the logs from the Pipeline in Jenkins.

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="3. Find the error" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/jenkinsErrorLog.png" title="Fix the red" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        Now you should be presented with a long log of the previously ran Pipeline.
        <br /><br />
        <strong><em>Hint</em></strong> Search the logs for the term 'TYPO' ;)

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="4. Modify the Pipeline" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/editPipeline.png" title="Edit the Jenkins Pipeline to remove the 'TYPO'" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        In order to alter the Pipeline, navigate back to your OpenShift Web Console, in the <code>{{< user_info "user" "-slides" >}}</code> project and return to the <strong><em>Builds > Pipelines</em></strong> screen.
        <br /><br />
        Next, from the <strong><em>Actions</em></strong> dropdown to the right, select <strong><em>Edit</em></strong> (not <em>Edit YAML</em>).

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="5. Fix the error" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/removeTypo.png" title="Found the 'TYPO' yet?" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        Since this was a deliberate error placed in the Pipeline, it should be easy to find and remedy.
        <br /><br />
        Look for the <em>TYPO</em>, remove it, and click <strong><em>Save</em></strong>

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="6. Rerun the Pipeline" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/builtDemoSlidesApp.png" title="A new application has appeared!" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        With the <em>TYPO</em> fixed, simple click the <strong><em>Start Pipeline</em></strong> button again to build the application.
        <br /><br />
        Once the Pipeline has completed, you may find the built Slides application available in that Project.

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="7. Summary" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/ossJenkinsIssues.png" title="Chew Big Red, don't build with it" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        You should now have some insight into how the built-in OSS Jenkins on OpenShift operates.  The integrations are well architected and allow firing Jenkins Pipelines from OpenShift seamlessly.<br /><br />

        However, you may have also noticed a large red number with a series of warnings.  The issues presented are often serious vulnerabilities which could leave your CI/CD server open to malicious actors.  On top of the issues, here are a few other thoughts to consider:<br />
        <ul>
          <li>How do you manage this Jenkins instance for a team of developers?  Multiple teams?  Access, configuration, and plugin management are difficult across the enterprise.</li>
          <li>Do you really want developers with their own Jenkins server to do as they like?  Queue the "Works on my Jenkins" memes.</li>
          <li>Does Red Hat really know and support Jenkins well enough?  What about 3rd party integrations and plugins?</li>
          <li>Are you looking for DevOps and Jenkins expertise and training?</li>
          </ul>
        </div>
{{< /twoSideStep >}}

{{< importPartial "footer/footer.html" >}}
