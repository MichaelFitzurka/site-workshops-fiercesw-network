---
title: Lab Architecture
workshops: data_science_102_full_stack
workshop_weight: 10
layout: lab
---

# Introduction to the lab architecture

<img src="../images/hwx_ds101/lab_arch.png" class="img-responsive" />

Now, before anyone gets extremely technical over the architecture diagram, there are some parts missing and things not labeled.  Trying to keep this short, sweet, and simple.  There's also a reason why I showed two separate AWS clouds: it can technically be another cloud provider entirely.  CloudBreak is very flexible in its deployments.

## Interacting with the Hortonworks environment
Many of the components in the larger Hortonworks and Hadoop ecosystem are Java-based, and can be interfaced with via APIs and the CLI.  Even better than that is that some of the larger projects have modern web interfaces as well.
All of the components we’ll be interacting with today have web interfaces.  There is a diagnostic method to access the terminal available to the administrators and proctors of this workshop.  Currently because of the way the clusters are deployed we don’t have a way to give every student and user access to the private keys used to login.  We’re working on it though!  It takes breaking things down and building them back together with just the right parts, we’ll get there though.

## Sign in with Workshop Details (also seen in footer of workshop)
First things first, at the bottom of the lab pages (and immediately below) you’ll notice a small form with a few drop downs and a text box.  You’ll need to fill this out in order to proceed with the workshop, your instructor will guide you on that.

{{< importPartial "footer/footer.html" >}}

## Hortonworks CloudBreak
Once we have our credentials provisioned, we can start to log into Hortonworks CloudBreak.  Cloudbreak simplifies the deployment of Hortonworks platforms in cloud environments such as Amazon Web Services, Microsoft Azure and Google Cloud Platform. Cloudbreak enables the enterprise to quickly run big data workloads in the cloud while optimizing the use of cloud resources.

## Ambari
We’ll use CloudBreak to deploy a Data Science (Apache Spark 2, Apache Zeppelin) cluster built on the Hortonworks Data Platform.  After a bit more exploration in CloudBreak, we’ll connect to the cluster we just created via Ambari.  Ambari is aimed at making Hadoop management simpler by developing software for provisioning, managing, and monitoring Apache Hadoop clusters. Ambari provides an intuitive, easy-to-use Hadoop management web UI backed by its RESTful APIs.

## Interacting with HDFS
In Ambari, we’ll show you how you can load data into the cluster’s Hadoop Distributed File System or HDFS.  With the data loaded we’ll be able to use it in the Hadoop cluster which we’ll process with a Zeppelin notebook.  Zeppelin web-based application that uses notebook that enables data-driven, interactive data analytics and collaborative documents with SQL, Scala and more.

## Apache Zeppelin Notebooks for Data Science
We’ll run one of the sample tutorials that are bundled with Zeppelin as a base line.  Then we’ll load in a custom notebook written by one of the lead Data Jedis at Hortonworks Ian Brooks, PhD.  This notebook takes in some census data and extrapolates it in a way to dip your toes into Machine Learning concepts.

> Without any further adieu, let’s get started!

# Accessing CloudBreak

Use this URL to access the CloudBreak node, just change the workshopname. Ask your instructor for the workshop name.

```bash
{{< cbdfqdn >}}
```

### Login Info
```bash
login:    {{< cbduser >}}
Password: student-{{< span "userid" >}}
```

After logging in, you should see the following:
{{< figureImage src="../images/hwx_ds101/cloudBreak_home.png" title="Fresh installation of Hortonworks CloudBreak Deployer" >}}

{{< importPartial "footer/footer.html" >}}
