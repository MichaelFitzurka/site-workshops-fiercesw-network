---
title: Exercise 2 - Ambari & adding data to HDFS
workshops: data_science_102_full_stack
workshop_weight: 12
layout: lab
---

{{< twoSideStep title="Ambari Interface" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101/ambari_home_labeled.png" >}}
  </div>
  <div class="col-lg-4">
    Now that we're in Ambari, let's take a look at a few key points...
    <ol>
      <li><strong>Services</strong> in the Cluster - A list of all the active components in this cluster that Ambari has access to.  Also accessible as a drop-down</li>
      <li><strong>Alerts</strong> - If there’s something wrong you can find that here</li>
      <li><strong>Metrics</strong> - Very important especially since some of these components and services are Java based and need to have their heap and other performance metrics tuned closely in production environments.</li>
      <li><strong>Extras menu</strong> - Functions that support the larger cluster as a whole</li>
    </ol>
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Extras Menu - File View" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101/ambari_2.png" >}}
  </div>
  <div class="col-lg-4">
    Why don’t we actually select <em>Files View</em> from that <strong>Extras menu</strong>.
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Navigating HDFS & Uploading Data" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/ambari_4.png" >}}
  </div>
  <div class="col-lg-4">
    Once the <strong>Files View</strong> loads, we can click into the <em>/tmp</em> directory.  Next, download the following census data file in CSV format from the following link:
    <br /><br />
    <a href="//workshops.fiercesw.network/hortonworks/workshops/data_science_101/files/MushroomDatabase.csv" target="_blank" />Poisonous Mushroom Database CSV</a>
    <br /><br />
    With that downloaded, navigate to the <em>tmp</em> directory & click the <strong>Upload</strong> button in the upper right portion of the <strong>File View</strong> and drag that file into the dropbox to upload.
    <br /><br />
    This is one method of going about loading files into HDFS.  Another method is to download it locally to the server via a shell, and then adding it to the HDFS registry via the <em>hadoop fs</em> command.  We’ll sort of use those here in the next few steps when we get into Zeppelin.
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Quick Links - Launch Zeppelin" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/ambari_5.png" >}}
  </div>
  <div class="col-lg-4">
    We’ve got the data we need in HDFS, everything should still be running nominally, let us select the Zeppelin service.<br />
    Next, in the middle of the top part of the main page, you should see a Quick Links drop down, click it and select Zeppelin UI.<br />
    A new tab should open with the Zeppelin web application.
  </div>
{{< /twoSideStep >}}


{{< importPartial "footer/footer.html" >}}
