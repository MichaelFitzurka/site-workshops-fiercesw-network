---
title: Lab 16 - ChatOps and Conversation-Driven DevOps
workshops: secure_software_factory
workshop_weight: 25
layout: lab
---

# ChatOps and Conversation-Driven DevOps
Chat rooms are not a new concept, dating back to the early days of the internet with dial-up Bulletin Board Services (BBS).  Technology has advanced greatly, but the idea of collaborating and communicating around topics
with a recorded, searchable and time-stamped log of the conversation is as helpful today as it was then.

Conceptually ChatOps, or conversation-driven DevOps united with automated tools, is likewise not new.  Direct support calls are faster than trading emails.  And when disasters strike, a "war room" is typically established to remove any impediments to communication.  Advancements in technology and automation, combined with the enhanced need for continuous collaboration in DevOps, has pushed IT teams from email to chat to ChatOps.

Chat rooms become ChatOps with the addition of automated programs, called ChatBots or just simply bots, which integrate the commands and output of external tools into the communication stream.  In our pipeline, we will have a Jenkins bot announce to our chat room every time a pipeline has begun, as well as the status when it completes.  ChatOps can go much deeper with Robot Process Automation (RPA) listening to logs and acting accordingly, failing builds could be sent to ServiceNOW, and system-wide status reports could be triggered via a chat post with fully documented and time-stamped results.  Bots can even send commands to other bots inside the chat room, so that the automated workflow is completely transparent and readily understandable to all participants, human and non-human alike.  The integration of automated tools has pushed many teams from treating ChatOps as an amusing development tool into regarding it as a vital production support system.

# Append to Jenkins Pipeline Configuration
In Builds &rarr; Pipelines &rarr; tasks-pipeline &rarr; Actions &rarr; Edit

<img src="../images/pipeline_actions_edit.png" width="900" />

Insert the text below at line 7 in the Jenkins Pipeline Configuration, just after the line "stages {".  Please make sure to append to the beginning of the next line.  

```yaml
    stage('Initialize') {
      steps {
        echo "Pipeline started"
        rocketSend serverUrl: 'http://chat-dev.apps.rhocp.fiercesw.network', channel: 'general', rawMessage: true, message: "**Pipeline started** ${env.JOB_NAME} #${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
      }
    }
```

When inserted correctly, the pipeline should start like this:

```yaml
pipeline {
  agent {
    label 'maven'
  }
  stages {
    stage('Initialize') {
      steps {
        echo "Pipeline started"
        rocketSend serverUrl: 'http://chat-dev.apps.rhocp.fiercesw.network', channel: 'general', rawMessage: true, message: "**Pipeline started** ${env.JOB_NAME} #${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
      }
    }
    stage('Build App') {
      steps {
```

With the rest of the pipeline continuing on from here.

Next, append the text below to the bottom of the Jenkins Pipeline Configuration.  Please make sure to append to the beginning of the next line.  

```yaml
  }
  post {
    success {
      rocketSend serverUrl: 'http://chat-dev.apps.rhocp.fiercesw.network', channel: 'general', rawMessage: true, message: "**Pipeline success** :100: ${env.JOB_NAME} #${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
    }
    unstable {
      rocketSend serverUrl: 'http://chat-dev.apps.rhocp.fiercesw.network', channel: 'general', rawMessage: true, message: "**Pipeline unstable** :confused: ${env.JOB_NAME} #${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)", avatar: 'https://jenkins.io/images/logos/fire/fire.png'
    }
    failure {
      rocketSend serverUrl: 'http://chat-dev.apps.rhocp.fiercesw.network', channel: 'general', rawMessage: true, message: "**Pipeline failure** :sob: ${env.JOB_NAME} #${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)", avatar: 'https://jenkins.io/images/logos/fire/fire.png'
    }
    always {
      echo "Pipeline finished"
    }
  }
}
```

Congratulations, this should be the final step in your Trusted Software Supply Chain.  Go on to the next lab to verify and run the pipeline.


{{< importPartial "footer/footer.html" >}}
