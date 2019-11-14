---
title: Login Tour - OpenShift CLI
workshops: openshift_102_multilab
workshop_weight: 12
layout: lab
---

# Terminal - Let's try the 'oc' command line (CLI) tool
Now that we have a terminal for OpenShift, login using the same URI and user credentials with following command:

```bash
$ oc login {{< urifqdn_s2f "https://master." "" >}}
Authentication required for {{< urifqdn_s2f "https://master." "" >}}:443 (openshift)
 Username: {{< user_info "user" >}}
 Password: <Instructor Provided>
Login successful.
```

Check to see what projects you have access to:

```bash
$ oc get projects
```

Type the following command to show services, deployment configs, build configurations, and active deployments (this will come in handy later):

```bash
$ oc status
```

# Summary
Now that we have logged in you may continue to the next exercise.

{{< importPartial "footer/footer.html" >}}
