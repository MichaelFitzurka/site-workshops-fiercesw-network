---
  title: Data Science 101 - For Data Scientists
  menu:
    main:
      parent: workshops
      pre: fa fa-bar-chart
---

# Hortonworks Data Science 101 - For Data Scientists - Introduction Workshop

> This workshop is geared for a more Data Science heavy experience where you get will have the platform, cluster, and data provided, and can jump directly into Data Science by running models with various Zeppelin Notebooks.

## Description

This workshop will have you working with some Data Science concepts and basic Machine Learning tools in [**Hortonworks Data Platform**](https://hortonworks.com/products/data-platforms/hdp/).  Get hands on experience by diving into a provisioned **Hortonworks Data Platform** + **Apache Spark** cluster, and learn some of the fundamental concepts and key technological components of Data Analytics and Data Science!

## Who should attend

- Anyone who has had any exposure to Big Data
- Data Scientists
- Architects
- Analysts
- Developers
- Technical leads


## What you will learn

- Introduction to the Hadoop ecosystem with Hortonworks
- The underlying platform powering your Data Science workloads
- Using **Zeppelin Notebooks** for hands-on work with Data Science and Machine Learning concepts


## Introduction
Welcome to the Data Science 101 Workshop brought to you by Hortonworks and Fierce Software!

If you are on-site with us, we will progress through this workshop in one of the following ways:

* **Self-paced** - With the self-paced method you'll be introduced to the environment and everything needed to progress.  You'll work through each step and exercise at your own pace.
* **Instructor led** - An instructor will walk you through each step and exercise over a specific time-frame and set agenda, he or she will demonstrate on their shared screen as you progress.

In either case, the environment has been set up and the instructors will provide you with everything you need to get started to move through each exercise.

Otherwise, if you're running this on your own, just go through the list of labs below in order.  Keep in mind if you're not part of a coordinated workshop, the environment will most likely not be provisioned but it's easy enough to follow along.

Here we’ll be demoing some of the tools in the Apache Hadoop ecosystem by using [**Hortonworks CloudBreak Deployer**](https://hortonworks.com/open-source/cloudbreak/) to deploy a [**Hortonworks Data Platform**](https://hortonworks.com/products/data-platforms/hdp/) and **Apache Spark** cluster to work through some **Zeppelin notebooks**.

As is everyone’s favorite way to get things going, it’ll be *Death By Powerpoint* and we’ll be starting with some high level concepts of the Hadoop ecosystem with Hortonworks Data Platform.  Then the focus is brought to the specific architecture of our lab environments and the components in them, and a little bit more about the ones we’ll be using.

After the slideshow torture, we’ll be diving straight into the lab.  There’s a small Setup section as a preliminary step to get you familiar with the lab environment and the tools at your disposal.

We’ll be spending most of our time focused on the lab content.  You’ll be working through this by yourself, or ideally even with the people next to you as a team!  There are (mostly) clear instructions along the way, and even some pictures to help.  Even then, don’t be shy.  Ask questions, challenge the way we do things, if you need some help we’ll be happy to guide you along.


## Labs

{{< labs data_science_101_for_data_scientists >}}

<br>

{{% alert info %}}
These labs have been tailored for HDP v2.6.5.  CloudBreak has been deployed to AWS via CloudFormation Quickstart in a new VPC as the starting point for this lab.  Red Hat Identity Management provides LDAP services to the cluster.
{{% /alert %}}

{{% alert success %}}
### Credits
Many thanks to Satish Bomma, Michael Young, and Ian Brooks of Hortonworks for the help in putting this together
{{% /alert %}}

{{< importPartial "footer/footer.html" >}}
