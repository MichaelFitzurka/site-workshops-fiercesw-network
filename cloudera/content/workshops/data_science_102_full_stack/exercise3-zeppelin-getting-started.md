---
title: Exercise 3 - Zeppelin - Getting Started
workshops: data_science_102_full_stack
workshop_weight: 13
layout: lab
---


{{< twoSideStep title="Zeppelin Dashboard" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/zep1.png" title="Apache Zeppelin" >}}
  </div>
  <div class="col-lg-4">
    First thing’s first, let’s login using the admin credentials we set when making the cluster earlier in CloudBreak.<br />
    Upon logging in, you’ll see the page change slightly, adding some controls for <strong>Notebooks</strong>, links to <strong>Help</strong> and the <strong>Community</strong>, and the top menu is functional now.
    <br /><br />
    In the first part of this exercise, we’ll actually build off the foundation already in Zeppelin.  Click under <strong>Getting Started</strong> and select the <em>Apache Spark in 5 Minutes</em> notebook.
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Zeppelin Notebook - Getting Started" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/zep22_labeled.png" title="Highlighted parts of a Zeppelin notebook" >}}
    {{< figureImage src="../images/hwx_ds101/saveBindings.png" title="Saving and ordering of Interpreter Bindings" >}}
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
    <h3>Save Interpreter Bindings</h3>
    Before we can execute our Notebook we’ll need to set our <strong>Interpreter Binding</strong> settings so click <strong>Save</strong> real quick.

    <h3>Expand code, output, execute</h3>
    Next, for the purposes of this workshop, at the top in the Controls, click <strong>Show/hide the output</strong> until all the Output is show, and click <strong>Show/hide the code</strong> until all the paragraphs have their code displayed.  When you run through each paragraph in the notebook, the code view will be hidden, and the output will be shown most of the time.  If the task has <em>Finished</em> with no errors and the Output portion didn’t show, simply toggle them with the paragraph controls to the top right of each paragraph.

    <br /><br />
    Take a few minutes to work through this example and move onto the next exercise.

  </div>
{{< /twoSideStep >}}
{{< importPartial "footer/footer.html" >}}
