---
title: Exercise 1 - Navigating through the cluster
workshops: data_science_101_for_data_scientists
workshop_weight: 11
layout: lab
---

# Cluster Navigation

{{< twoSideStep title="Accessing CloudBreak" >}}
        <div class="col-lg-8">
                {{< figureImage src="../images/hwx_ds101_fds/no-creds.png" title="'No Credentials' shown after logging into Hortonworks CloudBreak Deployer" >}}
        </div>
        <div class="col-lg-4">
                Start by going to the link below to open CloudBreak.  You’ll use the credentials displayed below.  After logging in, you should see the following screen
                <br /><br />

                <strong>{{< cbd_ds_fds_fqdn >}}</strong>

                <h3>Login Info</h3>
                <strong>Login</strong>: {{< cbd_ds_fds_user_no_domain >}}<br />
                <strong>Password</strong>: Instructor provided
                <hr />

                <h3>What's going on?</h3>
                <p>Every user in Cloudbreak has their own Workspace - each workspace needs credentials for a cloud platform in order to provision clusters.  Upon login we're in our default workspace in our cluster which has no credentials or resources attached.</p>
                <p class="lead">Let's switch to the shared workshop workspace.</p>
        </div>
{{< /twoSideStep >}}


{{< twoSideStep title="Switching Workspaces" >}}
	<div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/hwx_ds101_fds/select-workshop-workspace_crop_highlight.png" title="User & Workspace Dropdown menu" >}}
	</div>
	<div class="col-sm-12 col-lg-4">
		<p>CloudBreak supports multiple Workspaces that can be shared amongst users and groups.  Workspaces are a great way to logically separate different credentials, environments, resources, teams, and more.</p>
		<p>Upon login, each user is placed into their default workspace - in this case every user has a workspace named after themselves.</p>
		<p>For this workshop there is a shared workspace with a single large cluster that all the students will use.  The name will change based on what the workshop location, title, or theme is.</p>
		<p class="lead">In the upper right hand corner, click on the User/Workspace Dropdown and select the "workshop" Workspace.</p>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Cluster listing" >}}
	<div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/hwx_ds101_fds/see-clusters-in-shared-workspace_crop_highlight.png" title="Select the available cluster in the shared workspace (highlighted in yellow overlay)" >}}
	</div>
	<div class="col-sm-12 col-lg-4">
		<p>Now that we are in the proper workspace, we can see a cluster available and we no longer receive the "No Credentials" error.</p>
		<p>This is because the shared workspace has credentials and resources pre-provisioned by an administrator so as Data Scientists we don't have to worry about clouds, keys, or resources.</p>
		<p class="lead">Select the available cluster.</p>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Cluster Overview - Click into Ambari" >}}
	<div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/hwx_ds101_fds/enter-cluster-select-Ambari-URL_highlight.png" title="Cluster Overview - Click the 'Ambari URL' to enter Ambari (highlighted in yellow overlay)" >}}
	</div>
	<div class="col-sm-12 col-lg-4">
		<p>Once you've selected the workshop cluster, you can see an overview of the various components, configurations, resources, and more.</p>
		<p>Since we're not worried about the operation of the cluster, we can jump directly into this cluster to continue.</p>
		<p class="lead">Click on the "Ambari URL" link to jump into Ambari</p>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Ambari Overview" >}}
	<div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/hwx_ds101_fds/ambari-dash_crop.png" title="Ambari Dashboard Overview" >}}
	</div>
	<div class="col-sm-12 col-lg-4">
		<p>Ambari is one of the management components of a Hortonworks cluster.  Ambari allows you to add, control, reconfigure, and otherwise manage the components of your cluster.</p>
		<p>Here we can see the Dashboard which shows an overview of some important metrics about our cluster.</p>
		<p>Ambari features streaming actions and notifications, allows you to interact with your HDFS store, and features self-healing capabilities.</p>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Navigate into Zeppelin" >}}
	<div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/hwx_ds101_fds/ambari-zeppelin-quick-links_crop_highlight.png" title="Select the 'Zeppelin' service and the 'Zeppelin UI' option from the dropdown menu (highlighted in yellow overlay)" >}}
	</div>
	<div class="col-sm-12 col-lg-4">
		<p>On the left hand side you can see a listing of <strong>Services</strong> such as <em>HDFS</em>, <em>YARN</em>, and so on.</p>
		<p>These same Services are also available as a dropdown menu in the top menu bar under <strong>Services</strong>.</p>
		<p class="lead">Select the <strong>Zeppelin Notebook</strong> service and from the <strong>Quick Links</strong> menu select the <strong>Zeppelin UI</strong> option to load Zeppelin.</p>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Zeppelin Welcome Screen" >}}
	<div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/hwx_ds101_fds/welcome-to-zeppelin_highlight.png" title="Zeppelin welcome screen - click 'Login' in the upper right corner of the menu bar (highlighted in yellow overlay)" >}}
	</div>
	<div class="col-sm-12 col-lg-4">
		<p>Apache Zeppelin is a component of the Hortonworks cluster that allows you to run Data-driven workloads.</p>
		<p>Zeppelin's central draw is the use of <em>Notebooks</em> which is composed of <em>Paragraphs</em>.</p>
		<p>These Paragraphs can have different <em>Interpreters</em> such as Markdown, Python, SQL, Spark, and more.</p>
		<p>Because these Notebooks are text-based, they can be checked into a version control system such as GitHub and easily shared and collaborated on.</p>
		<p class="lead">In the upper right-hand corner, click on the <strong>Login</strong> button.</p>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Log into Zeppelin" >}}
	<div class="col-sm-12 col-lg-8">
                {{< figureImage src="../images/hwx_ds101_fds/log-in-to-zeppelin_cropped.png" title="Zeppelin Login - Fill credentials" >}}
	</div>
	<div class="col-sm-12 col-lg-4">
		<p>Enter the same credentials you've been using for the rest of this workshop.</p>
		<p>All authentication is handled via Red Hat Identity Management via enterprise LDAP which has native integrations with Hortonworks products.</p>
		<p class="lead">Upon logging into Zeppelin, continue onto the next exercise in the workshop.</p>
	</div>
{{< /twoSideStep >}}




{{< importPartial "footer/footer.html" >}}
