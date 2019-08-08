---
title: Exercise 1 - CloudBreak Deployer
workshops: data_science_102_full_stack
workshop_weight: 11
layout: lab
---

{{< twoSideStep title="Login to CloudBreak" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101/cloudBreak_home_labeled.png" >}}
	</div>
	<div class="col-lg-4">
		Start by going to the link below to open CloudBreak.  You’ll use the credentials displayed below.  After logging in, you should see the following screen
		<br /><br />

		<strong>{{< cbdfqdn >}}</strong>

		<h3>Login Info</h3>
		<strong>Login</strong>: {{< cbduser >}}<br />
		<strong>Password</strong>: student-{{< span "userid" "YOUR#" >}}
	</div>
{{< /twoSideStep >}}

#### A few things to point out

1. **Clusters & Create Cluster** - We have a blank Clusters view, and we’ll be making one in a moment
2. **Credentials** - You’d normally set up Credentials first, the authentication methods used to connect to your cloud infrastructure.  We’ve already done that, though you can click around and see how quickly you can integrate some of your cloud services.
3. **Blueprints** - These are Ambari Blueprints, we’ll be using the default ones, specifically the “Data Science Apache Spark 2, Apache Zeppelin” blueprint
4. **Notification Panel** - When administering clusters with CloudBreak, this will be an important area to keep watch of.  You should see a few things pop up here during the use of this workshop

There are plenty of other features and settings that can be poked around with, but go ahead and click **Create Cluster**.

{{< twoSideStep title="General Configuration" >}}
	<div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/cloudBreak_cc1.png" >}}
	</div>
	<div class="col-lg-4">
		<ul>
			<li>Select the <em>“cbd-aws”</em> <strong>Credential</strong>, give the cluster a <strong>name</strong> maybe something like <em>ds102</em>, and select a <strong>region</strong>.
			<br />We suggest something in <em>US East</em> for latency and speed benefits, unless you’re physically located in another area that’s closer.<br /></li>
			<li>The <strong>Platform Version</strong> should be set to the latest version of HDP, and the <strong>Cluster Type</strong> should be <em>Data Science: Apache Spark 2, Apache Zeppelin</em>.<br /></li>
			<li>Once that’s all properly set, click <strong>Next</strong>.</li>
		</ul>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Hardware and Storage" >}}
	<div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/hardwareConfig.png" >}}
	</div>
	<div class="col-lg-4">
		On the following Hardware and Storage page, make sure all the <strong>Instance Counts</strong> for the <em>Worker</em> and <em>Compute</em> nodes are set at <em>4</em>, you’ll need to change the count to <em>4</em>.  This page should look like the screenshot in the below slideshow.
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Gateway Configuration" >}}
	<div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/cloudBreak_cc3.png" >}}
	</div>
	<div class="col-lg-4">
		For the Gateway Topology page, for the purposes of this workshop, we’ll add <em>All</em> to the <strong>Exposable Services</strong> list along side of <em>Ambari</em>.
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Network" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101/cloudBreak_cc4-1.png" title="How to add a rule, see under Master" >}}
		{{< figureImage src="../images/hwx_ds101/networkConfig.png" title="Completed configuration" >}}
	</div>
	<div class="col-lg-4">
		<ol>
			<li>In <strong>Step 4, Network</strong>, make sure to add access from <em>10.0.0.0/16</em> on port <em>1-65535</em> for both <em>TCP</em> and <em>UDP</em> to every <strong>Security Group</strong> so that the nodes can communicate with each other internally in their subnet.</li>
			<li>Then, add a rule to the <em>Master</em> to allow for access to the Zeppelin UI on the Master node.  This needs to be for <em>Any source, port 9995, and for both TCP+UDP</em>.  Reference the screenshots to the left, there is one with the steps on how to add a rule to the Security Group and one following it showing the completed configuration.
		</ol>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Security" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101/cloudBreak_cc5.png" >}}
	</div>
	<div class="col-lg-4">
		<ol>
			<li>On the final step <strong>Security</strong>, for our purposes it’s suggested to leave the <strong>Cluster User</strong> set to <em>admin</em>, set a <strong>password</strong> to <em>Passw0rd!</em> - you can set it to something else, but we won’t be able to troubleshoot if something goes awry.</li>
			<li>Select the <strong>Existing SSH public key</strong> file that is titled <em>CBDKey-student{{< span "userid" >}}</em> or else you won’t be able to connect to your cluster.</li>
			<li>Once that’s all configured, click <strong>Create Cluster</strong>.  You’ll notice that the cluster is now populated on the <strong>Clusters</strong> page and has a status of <em>Create in progress</em>.  You may also see a stream of notifications coming in at the upper right hand corner.
		</ol>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Break-time" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101/cloudBreak_cc6.png" >}}
	</div>
	<div class="col-lg-4">
		It will take a few minutes to deploy the cluster so feel free to grab a snack, some swag, or chat with your new friend next to you.  Restroom breaks are advised.
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Cluster Created" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101/cloudBreak_cc7.png" >}}
	</div>
	<div class="col-lg-4">
		Once your cluster has been created, you’ll see if colored green and in a <em>Running</em> state.  Click into it and you should see some of the configuration details and <em>luster Information</em>, an <em>Event History</em>, and some actions you can take on them.  Click on the <strong>Ambari URL</strong> link, and continue into the next exercise.
	</div>
{{< /twoSideStep >}}

{{< importPartial "footer/footer.html" >}}
