---
title: Exercise 2 - Zeppelin - Getting Started
workshops: data_science_101_for_data_scientists
workshop_weight: 12
layout: lab
---

# Getting Started With Apache Zeppelin

{{< twoSideStep title="Zeppelin Dashboard - Select a Notebook" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101_fds/apache-spark-in-5-minutes_crop_highlight.png" title="Select the 'Getting Started' > 'Apache Spark in 5 Minutes' notebook (highlighted in yellow overlay)." >}}
  </div>
  <div class="col-lg-4">
    <p>Now that we’re logged in, we're presented with a selection of Notebooks.</p>
    <p class="lead">Expand the <strong>Getting Started</strong> folder and select the <strong>Apache Spark in 5 Minutes</strong> notebook.</p>
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Zeppelin Notebook - Key Components" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/zep22_labeled.png" title="Highlighted parts of a Zeppelin notebook" >}}
  </div>
  <div class="col-lg-4">
    Now we’re in the Notebook view, and there are a few things to make note of…<br />
    <ol>
      <li><strong>Title</strong> - The title is editable and so is the whole hierarchy right from here. Weird.</li>
      <li><strong>Controls</strong> - Here you’ll find some of the controls for the whole notebook, such as playing the whole thing, hiding code/editor view (like shown in the screenshot), duplicating and more.</li>
      <li><strong>Helpers</strong> - Things such as keyboard shortcuts, Settings, and other functions.</li>
      <li><strong>Interpreter Bindings</strong> - If this is the first time in Zeppelin and running a Notebook, be sure to set your interpreter binding order so that the sections below run.</li>
      <li><strong>Paragraphs</strong> - In a Notebook you’ll have "paragraphs" that have titles, a code editor view, output and settings.  You can see most of the expanded parts of the Short Intro paragraph that uses the Markdown (md) interpreter.</li>
    </ol>

  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Zeppelin Notebook - Save Interpreter Bindings" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/saveBindings.png" title="Saving and ordering of Interpreter Bindings" >}}
  </div>
  <div class="col-lg-4">
    <h3>Save Interpreter Bindings</h3>
    Before we can execute our Notebook we’ll need to set our <strong>Interpreter Binding</strong> settings so click <strong>Save</strong> real quick.

  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Zeppelin Notebook - Execute Notebook" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101_fds/apache-spark-in-5-minutes-notebook.png" title="Work through the notebook one paragraph at a time." >}}
  </div>
  <div class="col-lg-4">

    <h3>Expand code, output, execute</h3>
    <p>Next, for the purposes of this workshop, at the top in the Controls, click the <strong>Show/hide the output</strong> button until all the Output is show, and click <strong>Show/hide the code</strong> until all the paragraphs have their code displayed.</p>
    <p>When you run through each paragraph in the notebook, the code view will be hidden, and the output will be shown most of the time.  If the task has <em>Finished</em> with no errors and the Output portion didn’t show, simply toggle them with the paragraph controls to the top right of each paragraph.</p>

    <br />
    <p class="lead">Take a few minutes to work through this notebook and move onto the next exercise.</p>

  </div>
{{< /twoSideStep >}}

{{< importPartial "footer/footer.html" >}}
