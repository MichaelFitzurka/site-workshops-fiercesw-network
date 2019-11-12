---
title: Lab 15 - Deploy Stage
workshops: secure_software_factory
workshop_weight: 26
layout: lab
---

# Add a Deploy Stage
Add the Deploy Stage into your pipeline.

<img src="../images/pipeline_deploy_stage.png" width="900" />

If the deployment config for the application already exists in the Stage Project or Environment the deployment config , service, and route are deleted.  This allows for the pipeline to be rerun.

The new-app is recreated in the Stage Environment from the image that you tagged in the previous stage.  The image also has a route created for with the svc.expose command.

# Append to Jenkins Pipeline Configuration
In Builds &rarr; Pipelines &rarr; tasks-pipeline &rarr; Actions &rarr; Edit

<img src="../images/pipeline_actions_edit.png" width="900" />

Append the text below to the bottom of the Jenkins Pipeline Configuration.  Please make sure to append to the beginning of the next line.  

```yaml
    stage('Deploy STAGE') {
      steps {
        script {
          openshift.withCluster() {
            openshift.withProject(env.STAGE_PROJECT) {
              if (openshift.selector('dc', 'tasks').exists()) {
                openshift.selector('dc', 'tasks').delete()
                openshift.selector('svc', 'tasks').delete()
                openshift.selector('route', 'tasks').delete()
              }

              openshift.newApp("tasks:${version}").narrow("svc").expose()
            }
          }
        }
      }
    }
```

# Test Your Pipeline
If you'd like to do a test of first pipeline stage, add the following brackets at the end of your Jenkinsfile. Make sure to append to the beginning of the last line.

```yaml
  }
}
```

Save your Jenkinsfile.

Go back to Builds &rarr; Pipelines

Click Start Pipeline

# Delete Brackets
Please delete the brackets you just added once testing is complete. We can add them later if you'd like to test your pipeline as you go along.

```yaml
  }
}
```

Click Save


{{< importPartial "footer/footer.html" >}}
