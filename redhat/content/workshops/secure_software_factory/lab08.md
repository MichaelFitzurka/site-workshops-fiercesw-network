---
title: Lab 08 - Static Application Security Testing
workshops: secure_software_factory
workshop_weight: 18
layout: lab
---

# Static Application Security Testing

Next we will add a Code Analysis Stage into the pipeline.  

<img src="../images/pipeline_sonar.png" width="900" />

Static code analysis is an automated process for scanning your code for quality and security issues, without executing the code itself.  This is achieved by reviewing the code for common patterns and anti-patterns to identify potential bugs, vulnerabilities and other code smells, as well as scanning for testing coverage and code duplication.  Where the previous testing phase validates that the code accomplishes its intended goals, static application security testing validates that the code is written in the correct manner by enforcing quality gates and coding standards.

In our factory, we will leverage the Maven Sonar plugin to run SonarQube scanning against our source code.

SonarQube is an open source static code analysis tool that we can use to automate running security scans against your source code to further improve the security of your application.  Every time you check-in code, SonarQube will scan the quality and perform a threat analysis of that code.

We leverage the SonarQube maven plugin and specify the maven goal "sonar:sonar" to run our project leveraging the SonarQube API.

SonarQube's security rules originate from these standards:

* [CWE Database][1] - Common Weakness Enumeration (CWE™) is a formal list or dictionary of common software weaknesses that can occur in software's architecture, design, code or implementation that can lead to exploitable security vulnerabilities.

* [SANS Top 25][2] - The SANS Top 25 list is a collection of the 25-most dangerous errors listed in the CWE, as compiled by the SANS organization.

* [OWASP Top 10][3] - The OWASP Top 10 is a list of broad categories of weaknesses, each of which can map to many individual rules.

<br>
# Append to Jenkins Pipeline Configuration

In Builds > Pipelines > tasks-pipeline > Actions > Edit

<img src="../images/pipeline_actions_edit.png" width="900" />

Append the text below to the bottom of the Jenkins Pipeline Configuration.  Please make sure to append to the beginning of the next line.  


```
    stage('Code Analysis') {
      steps {
        script {
          sh "${mvnCmd} sonar:sonar -Dsonar.host.url=http://sonarqube:9000 -DskipTests=true"
        }
      }
    }
```
<br>
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

# SonarQube Dashboard

Now that we have built and run the full pipeline, go into your CI/CD project and find the running SonarQube Pod.

Click the external route (https://sonarqube…) to go into your SonarQube Server

<img src="../images/sonarqube_pod.png" width="900" />

Select the Project tab in the top menu bar, and then select the project "JBoss EAP - Tasks JAX-RS App", to view the various metrics, stats, and code coverage as seen from the Overview screenshot below.  As your code evolves and the pipeline is rebuilt, SonarQube tracks changes to these statistics over time, to help you ensure that you are resolving issues and lowering your technical debt.

<img src="../images/sonarqube-analysis.png" width="900"><br/>

Click on the Project's Issues tab to see a list of each issue found, with the ability to filter by various metrics, such as type and severity.  The Measures tab contains many graphical and statistical reports.  The Code tab allows you to drill down into the project's files, annotated with any issues found.  And the Activity tab graphs your statistics over each pipeline build.

[1]: http://cwe.mitre.org/about/index.html
[2]: https://www.sans.org/top25-software-errors/
[3]: https://www.owasp.org/index.php/Top_10-2017_Top_10
{{< importPartial "footer/footer.html" >}}
