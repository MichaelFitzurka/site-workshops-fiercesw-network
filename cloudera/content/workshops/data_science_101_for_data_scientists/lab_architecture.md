---
title: Lab Architecture
workshops: data_science_101_for_data_scientists
workshop_weight: 10
layout: lab
---

# Introduction to the lab architecture

<img src="../images/hwx_ds101_fds/lab_architecture.png" class="img-responsive" alt="Lab architecture for the Data Science 101 - For Data Scientists Workshop" />

Now, before anyone gets extremely technical over the architecture diagram, there are some parts missing and things not labeled such as availability zones.  Trying to keep this short, sweet, and simple.  There's also a reason why I showed two separate AWS clouds: it can technically be another cloud provider entirely.  CloudBreak is very flexible in its deployments.

## Interacting with the Hortonworks environment

Many of the components in the larger Hortonworks and Hadoop ecosystem are Java-based, and can be interfaced with via APIs and the CLI.  Even better than that is that some of the larger projects have modern web interfaces as well.
All of the components we’ll be interacting with today have web interfaces.  There is a diagnostic method to access the terminal available to the administrators and proctors of this workshop.

## Sign in with Workshop Details (also seen in footer of workshop)

First thing's first, at the bottom of the lab pages (and immediately below) you’ll notice a small form with a few drop downs and a text box.  You’ll need to fill this out in order to proceed with the workshop, your instructor will guide you on that.

{{< importPartial "footer/footer.html" >}}

## Hortonworks CloudBreak

Once we have our credentials provisioned, we can start to log into Hortonworks CloudBreak.  Cloudbreak simplifies the deployment of Hortonworks platforms in cloud environments such as Amazon Web Services, AWS GovCloud, Microsoft Azure, Google Cloud Platform, and OpenStack private clouds. Cloudbreak enables the enterprise to quickly run big data workloads in the cloud while optimizing the use of cloud resources.

## Ambari

We’ll use CloudBreak to jump into a provisioned Data Science (Apache Spark 2, Apache Zeppelin) cluster built on the Hortonworks Data Platform.  We’ll connect to the cluster via Ambari.  Ambari is aimed at making Hadoop management simpler by developing software for provisioning, managing, and monitoring Apache Hadoop clusters. Ambari provides an intuitive, easy-to-use Hadoop management web UI backed by its RESTful APIs.

We won't spend much time in Ambari since it's mostly for management - from Ambari you can access Zeppelin which is where we'll run our Data Science workloads with Zeppelin notebooks.

Zeppelin is a web-based application that uses notebook that enables data-driven, interactive data analytics and collaborative documents with HTML, Markdown, Python, SQL, Scala and more.

## Apache Zeppelin Notebooks for Data Science

We’ll run two of the sample tutorials that are bundled with Zeppelin as a base line.  Then we’ll load in a custom notebook written by one of the lead Data Jedis at Hortonworks Ian Brooks, PhD.  This notebook takes in some fungi data and extrapolates it in a way to dip your toes into Machine Learning concepts.

> Without any further adieu, let’s get started!

{{< importPartial "footer/footer.html" >}}
