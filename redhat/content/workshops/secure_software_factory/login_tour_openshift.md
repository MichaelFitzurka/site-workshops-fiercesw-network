---
title: Login Tour - OpenShift CLI
workshops: secure_software_factory
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

# A Note about Identity Management
A person within your network has a single digital identity, but can have many user accounts to different resources, each with varying access controls per resource.  Identity management is the discipline of administering user access to these resources to keep the overall systems and data secure.

OpenShift can be configured to allow users to register themselves, but when you need your access to be more securely controlled, OpenShift can leverage user authentication with an existing OAuth provider.  For our lab environment, we have secured our users with a Red Hat Identity Management (IdM) server.

<img src="../images/idm-users.png" width="600"><br/>

With DevSecOps, the need is high to automate and secure the ever increasing development, test, staging, and production infrastructures with a coherent identity management strategy.  IdM provides our environment with Active Directory-like (LDAP) trusts, multi-product federation, configuration management with Ansible, integrated certificate and key management, and cybersecurity policy conformance.  All of this is managed within the network from one central location with CLI, Web UI, or RPC access.  The IdM server also tightly integrates with DNS record management, which enables greater automation capabilities, and distributes SSH keys to LDAP integrated components, providing a secure way to share keys across environments.

# Summary
Now that we have logged in and covered the Identity and Access Management implementation, you may continue to the next exercise.

{{< importPartial "footer/footer.html" >}}
