---
title: Lab 2, Exercise 1 - Enterprise DevSecOps
workshops: secure_software_factory
workshop_weight: 17
layout: lab
---

# Enterprise DevSecOps

Now that we've seen how the OSS Jenkins in OpenShift operates and some of the difficulties of using it in production, let us explore how we can solve these challenges with CloudBees Core.

{{< twoSideStep title="1. Intro to CloudBees Core" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/cjocScreen.png" title="CloudBees Core - Enterprise Jenkins" >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        Hey!  No big red boxes!<br /><br />

        Survey after survey shows Jenkins is the most popular open source automation server - and for good reason. However, Jenkins alone often lacks what teams need as continuous delivery scales across an organization. CloudBees Core extends Jenkins with functionality that embeds best practices, supports rapid on-boarding, provides tools for easier admin management and is based on an architecture that was built for scalability. You get enterprise-level benefits along with the Jenkins automation you already love.

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="2. Sonatype Nexus Platform" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/sonatypeNexusPro.png" title="Sonatype Nexus Pro extends the OSS offering" >}}
                {{< figureImage src="../images/sonatypeIQServer.png" title="IQ Server allows you to set policies for components, licenses, and more and manage across your enterprise easily." >}}
        </div>
        <div class="col-sm-12 col-lg-4">

        Where do your components come from?  What vulnerabilities are lurking baked deep in your application?  Do you consume any volatile licenses?
        <br /><br />
        The Sonatype integrated open source governance platform (Nexus) helps more than 1,000 organizations and 10 million software developers simultaneously accelerate innovation and improve application security.  Their machine learning engine (Nexus Intelligence) has analyzed more than 65 million open source components. We continuously feed this intelligence to our customers so they make better innovation decisions early and everywhere across their development lifecycle.

        </div>
{{< /twoSideStep >}}

{{< twoSideStep title="3. Secure Software Factory Layout" >}}
        <div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/userDefaultProjects.png" title="Your Namespaces and available Projects" >}}
        </div>
        <div class="col-sm-12 col-lg-4">
          As a recap, let us review your available resources...

          <ul>
          <li><strong><em>[Shared] Central CI/CD</em></strong><br /> This Project is shared among the workshop users and powers the CI/CD platform.  Here you'll find CloudBees Core, a managed Team Master, Sonatype Nexus & IQ Server, SonarQube, and other components to orchestrate our pipelines.</li>
          <li><strong><em>[Shared] ChatOps</em></strong><br /> Here we have a Rocket.Chat server deployed to implement ChatOps - what DevOps workshop is complete without an Open-Source Slack alternative?</li>
          <li><strong><em>[Shared] Team Resources</em></strong><br /> This is a Project that provides the workshop team a set of shared resources that can easily be self-provisioned such as a Demo App & Pipeline, Eclipse Che for a cloud-based IDE, and the Workshop Terminal</li>
          <li><strong><em>Tasks - Production, Tasks - Stage, & Tasks - Test</em></strong><br /> - These namespaces are pre-provisioned and empty, though have the required Roles and Service Accounts needed to operate in and out of the various namespaces.</li>
          <li><strong><em>User Dev</em></strong><br /> This will be where your tools such as Eclipse Che and various pipelines will actually be deployed into.
          </li>
          </ul>
        </div>
{{< /twoSideStep >}}

{{< importPartial "footer/footer.html" >}}
