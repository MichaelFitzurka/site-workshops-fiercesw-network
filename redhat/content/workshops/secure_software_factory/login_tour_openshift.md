---
title: Login Tour - OpenShift Web UI
workshops: secure_software_factory
workshop_weight: 8
layout: lab
---

# Log in to OpenShift

OpenShift provides a number of ways to interact with the Kubernetes cluster - an extensible API, a friendly CLI, and the Web UI.

The primary way to interact with OpenShift in this workshop is via the Web UI, though a web-based terminal is also available.

## Accessing the OpenShift Cluster
Use this URL to access the OpenShift cluster:

```bash
{{< urifqdn_s2f "https://master." "" >}}
```

### Login Info
Your instructor will provide the login information.

```bash
login:    <Instructor Provided>
Password: <Instructor Provided>
```

<img src="../images/ocp-login.png" width="600"><br/>

Once logging in, you should see a listing of your available personal and team shared Projects.

-INSERT PICTURE OF PROJECT LISTINGS-


{{< importPartial "footer/footer.html" >}}
