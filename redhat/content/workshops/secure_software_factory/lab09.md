---
title: Lab 09 - Archive App
workshops: secure_software_factory
workshop_weight: 19
layout: lab
---

# Add Archive Stage

Archiving the built and tested application into a trusted repository is an important step in making sure you are subsequently using only trusted parts.  The previous stages have ensured that your application has been built, tested and scanned properly.  So now with confidence, you can archive your application into an immutable and trusted binary repository.  This repository will version or audit any future changes to the application, configuration, and dependencies.  You have already utilized the Nexus Repository Manager in your build process to control and cache third-party Maven dependencies, but now you can dual purpose the Nexus Repository to archive your compiled and tested binaries in the same manner.

If you are unfamiliar with repository managers, you can think of them as specialized servers for managing and retrieving application files.  Applications are normally deployed as a packaged binary artifact.  In Java, this would be a JAR file.  In web applications, this could be a WAR or EAR file.  The Nexus Repository Manager stores these binary artifacts with certain metadata that identifies the group that owns the artifact, an id of the artifact itself, and a version number that uniquely identifies the specific build.  Given these three ids, the repository manager can store and retrieve third-party artifacts for your build stage, as well as manage your own artifacts during your archive stage.

Add Archive Stage Steps into your pipeline.

<img src="../images/pipeline_nexus.png" width="900" />

We leveraged the maven nexus plugin for this deployment.  The mvn deploy step is the last step in the maven lifecycle.  The built application is archived into the Nexus Repository.  We can see it later once we run the pipeline.

The "-P nexus3" option activates the nexus3 profile defined in the configuration/cicd-settings-nexus3.xml

<br>
# Append to Jenkins Pipeline Configuration

In Builds > Pipelines > tasks-pipeline > Actions > Edit

<img src="../images/pipeline_actions_edit.png" width="900" />

Append the text below to the bottom of the Jenkins Pipeline Configuration.  Please make sure to append to the beginning of the next line.  

```
    stage('Archive App') {
      steps {
        sh "${mvnCmd} deploy -DskipTests=true -P nexus3"
      }
    }
```
# Test Your Pipeline
If you'd like to do a test of first pipeline stage, add the following brackets at the end of your Jenkinsfile. Make sure to append to the beginning of the last line.

```
  }
}
```

Save your Jenkinsfile.

Go back to Builds > Pipelines

Click Start Pipeline

# Delete Brackets
Please delete the brackets you just added once testing is complete. We can add them later if you'd like to test your pipeline as you go along.

```
  }
}
```

Click Save

# Nexus Repository Manager

Now that we have built and run the latest pipeline, go into your CI/CD project and find the running Nexus Pod.

Click the external route (https://nexus…) to go into your Nexus Repository Manager

<img src="../images/nexus_pod.png" width="900" />

Select the "Browse menu" in the left navigation menu and then select the "maven-snapshots" repository to see your archived application.

<img src="../images/nexus_archive.png" width="900"><br/>

Your Maven pom.xml file uniquely identifies your project as:
```xml
	<groupId>org.jboss.quickstarts.eap</groupId>
	<artifactId>jboss-tasks-rs</artifactId>
	<version>7.0.0-SNAPSHOT</version>
```
Which is reflected in the Nexus directory structure above.

Click on the "Browse" menu navigation again and this time select the "maven-public" repository to display all the third-party libraries that were used in building and testing your application.
