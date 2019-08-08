---
title: Exercise 5 - Clean Up
workshops: data_science_102_full_stack
workshop_weight: 15
layout: lab
---

{{< twoSideStep title="Destroying the cluster" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/fin.png" title="Cluster deleting confirmation" >}}
  </div>
  <div class="col-lg-4">
    Now that we’ve run through a few Notebooks in Zeppelin, let’s exit out of the Zeppelin UI and return to the Ambari interface.  This can be accessed via the footer, or via the CloudBreak interface in the selected cluster view.
    <br /><br />
    Something to note is some of the changes in the metrics represented in the dashboard of Ambari.  We can see the memory usage spiking right around when we’re running the Notebooks, which is indicative of Spark workloads.  Feel free to explore around a bit more, and finally return to the CloudBreak panel.
    <br /><br />
    Under the <strong>Cluster</strong> page, select the cluster we built earlier,  In the top right, the Actions, select <strong>Terminate</strong>.  A modal will pop up, check the box for <em>Force Terminate</em> and click <strong>Okay</strong>.  Another quick example of how easy it is to manage clusters in the cloud with Hortonworks Cloudbreak.  You should see a series of notifications coming in as well during this process.
  </div>
{{< /twoSideStep >}}

{{< importPartial "footer/footer.html" >}}
