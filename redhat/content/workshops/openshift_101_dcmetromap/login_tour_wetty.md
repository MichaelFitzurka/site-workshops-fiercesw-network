---
title: Login Tour - Wetty
workshops: openshift_101_dcmetromap
workshop_weight: 10
layout: lab
---

# Introduction to Wetty (Browser-based SSH)

This lab provides a quick tour of the browser based SSH client Wetty. To help you get familiar with lab environment along with some key terminology we will use in subsequent lab content.


# Accessing Wetty

Use this URL to access the Wetty node, just ensure you've changed the workshop name, domain, and selected your seat number from the footer "Workshop Details" section. Ask your instructor for the configuration details. 

``` text
https://bastion.fiercesw.network
```

### Login Info

``` text
login:    student{{< span "userid" "YOUR#" >}}
Password: <Instructor Provided>
```

After logging in, you should see a shell.

<img src="../images/wetty.png" class="img-responsive" />

The wetty instance will already have the 'oc' command installed on them. The 'oc' command is used to connect to the OpenShift Master. 

{{< importPartial "footer/footer.html" >}}

