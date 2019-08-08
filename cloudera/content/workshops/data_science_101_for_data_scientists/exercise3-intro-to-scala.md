---
title: Exercise 3 - Zeppelin - Intro to Scala
workshops: data_science_101_for_data_scientists
workshop_weight: 13
layout: lab
---

# Exercise 3 - Zeppelin - Intro to Scala

{{< twoSideStep title="Zeppelin Dashboard" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101_fds/scala101-intro-to-sparkSQL_crop_highlight.png" title="Zeppelin - Select the next Notebook (highlighted in yellow overlay)" >}}
	</div>
	<div class="col-lg-4">
		<p>Once you've finished the <strong>Apache Spark in 5 Minutes</strong> notebook, navigate back to the Zeppelin Dashboard.</p>
		<p>Next what we'll do is look at a set of data that has information regarding air flight status.</p>
		<p class="lead">Select the next lab notebook from <strong>Labs > Spark 2.x > Data Worker > Scala > 101 - Intro to SparkSQL</strong></p>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Restart Interpreters" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101_fds/restart-interpreters-sparkSQL_cropped_highlight.png" title="Zeppelin - Restart the Spark2 Interpreter and then click Save (highlighted in yellow overlay)" >}}
	</div>
	<div class="col-lg-4">
		<p>Once you load an interpreter into memory it can persist which helps with subsequent loading times.</p>
		<p>It's a good practice to restart some of the interpreters between execution of notebooks.</p>
		<p class="lead">It not already expanded, expand the <strong>Interpreter Binding</strong> section at the top, restart the <strong>spark2</strong> interpreter, and click <strong>Save</strong>.</p>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Modify a Paragraph" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101_fds/modify-paragraph-sparkSQL_crop.png" title="Expand the code for the 'Create a DataFrame from CSV file' paragraph and remove the subdirectory. (text highlighted)" >}}
	</div>
	<div class="col-lg-4">
		<p>Zeppelin Notebooks are fluid and interactive.  They can be modified on the fly and checked into version control.</p>
		<p>Before we can continue, we'll need to modify one of these paragraphs.</p>
		<p class="lead">Expand the Code Block for the <strong>Create a DataFrame for CSV file</strong> paragraph and remove the <strong>/airflightsdelays</strong> subdirectory.</p>
	</div>
{{< /twoSideStep >}}

{{< twoSideStep title="Adjusted Paragraph" >}}
	<div class="col-lg-8">
		{{< figureImage src="../images/hwx_ds101_fds/adjusted-paragraph-sparkSQL_crop.png" title="After removing the subdirectory your paragraph should look like this." >}}
	</div>
	<div class="col-lg-4">
		<p>Once you've modified the <strong>Create a DataFrame from CSV file</strong> code block, it should look like this.</p>
		<p class="lead">Press the Play button on this paragraph, and continue to complete the rest of this notebook and onto the next exercise.</p>
	</div>
{{< /twoSideStep >}}

{{< importPartial "footer/footer.html" >}}
