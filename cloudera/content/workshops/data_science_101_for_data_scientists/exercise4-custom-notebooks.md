---
title: Exercise 4 - Custom Notebooks
workshops: data_science_101_for_data_scientists
workshop_weight: 14
layout: lab
---

<p class="lead">In this exercise we’ll be loading into Zeppelin a custom notebook.  This notebook ingests data regarding wild mushrooms and uses some Machine Learning algorithms to determine if the mushrooms are edible or poisonous.</p>

{{< twoSideStep title="Add a notebook to Zeppelin" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/load_custom_notebook.png" title="Note the two steps noted with numbers" >}}
  </div>
  <div class="col-lg-4" style="word-break: break-word;">
        <p>After finishing the <em>Apache Spark in 5 Minutes</em> notebook, go back to the Zeppelin dashboard and click on <strong>Import note</strong>. A modal box will pop-up, give the note a name in the Import As text box, and click on <strong>Add from URL</strong> and paste in the following URL:</p>
        <p><a href="https://raw.githubusercontent.com/kenmoini/RandomForestMushroomClassifier/master/Mushroom%20Classifier%20-%20Scala.json">https://raw.githubusercontent.com/kenmoini/RandomForestMushroomClassifier/master/Mushroom%20Classifier%20-%20Scala.json</a></p>
        <p class="lead">Click Import note & then click into the newly added notebook to launch it</p>
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Reset interpreters" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/reset_interpreters.png" title="Make note of the order, and restart both Sparks" >}}
  </div>
  <div class="col-lg-4">
    <p>Now before we continue, we need to reset and reorder the Spark interpreters.</p>
    <ol>
      <li>In the upper right hand corner of the notebook's Title bar, click the <strong>Cog icon</strong> to open the <em>Interpreter Bindings</em> pane.</li>
      <li>Reorder <strong>spark2</strong> to be above <strong>spark</strong></li>
      <li>To the left of each <strong>spark</strong> and <strong>spark2</strong>, click the <strong>Refresh</strong> button to restart them.</li>
      <li>Click <strong>Save</strong> to save and close the Interpreter Bindings pane.</li>
    </ol>
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Mushroom Workbook" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_1.png" title="What would Bear do?" >}}
  </div>
  <div class="col-lg-4">
    Ever wonder if a mushroom is poisonous just by the way it looks or smells?  We can do just that!
    <br /><br />
    This notebook will take us through the following processes:
    <ol>
      <li>Intro</li>
      <li>Setup</li>
      <li>Marshalling data</li>
      <li>Distribution Analysis</li>
      <li>Creating and training RandomForest ML models</li>
      <li>Evaluating the model and displaying results</li>
    </ol>
    Make sure to expand the code and results sections of your paragraphs.
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Dependencies, sessions, and HDFS" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_2.png" title="3 paragraphs that help set things up" >}}
  </div>
  <div class="col-lg-4">
    <h3>Load Dependency Libraries</h3>
      <p>Here we're simply setting up a Spark 2 dependency to load in the spark-csv package.</p>
    <h3>Initialize Spark Session</h3>
      <p>Next we're building the Spark 2 session and setting a few configuration points such as application name, enabling Hive support, and returning the Spark 2 version after the Spark session object has been created.</p>
    <h3>Download Datafile and Copy to HDFS</h3>
      <p>Here we're using the <em>shell</em> interpreter to execute some bash and wget the MushroomDatabase.csv file.</p>
      <p>From there we're adding the file to HDFS.</p>
      <br />
      <p>You may recall uploading this MushroomDatabase.csv file into HDFS via Ambari earlier.  That is correct and this is doing it again.  A nice way you can ensure data is present before processing</p>
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Load into data frame, test with SQL" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_3.png" title="Import data from the CSV into a data frame" >}}
  </div>
  <div class="col-lg-4">
    <p>This paragraph creates a <strong>data set</strong> and <strong>data frame</strong>.
    <br /><br />
    The CSV is loaded into the data frame, the <strong>option</strong> <em>headers</em> is set to <em>true</em> because the imported CSV does have title headers, and the schema is automatically inferred upon otherwise.
    <br /><br />
    We're creating a view of this data frame and can access it as SQL now, just as the next paragraph does.</p>
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Distribution Analysis" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_4.png" title="Some would say these odds are good enough but we need better" >}}
  </div>
  <div class="col-lg-4">
    <p>This is where you can start to realize the power of big data and large distributed data sets.  With a wide and deep enough data set we can start to draw some very keen correlations across different properties.</p>
    <p>Take a close look at the <strong>Odor by Poisonous</strong> paragraph.  Here we can tell that smell almost always gives a definitive answer for if the mushroom is poisonous for instance if it smells <em>spicy</em> or <em>creosote (?)</em> that it's most certainly poisonous.  There's an outlier though in the <em>None</em> column, most often odorless mushrooms are safe but there are enough poisonous ones that are odorless to raise concern.
    </p>
    <p>Let's see if we can do better than this and find a better deterministic value for these mushrooms.</p>
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Indexes" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_5.png" title="Long listed output trimmed in the middle" >}}
  </div>
  <div class="col-lg-4">
    <p>Here we're using one hot encoding to transform our data.  We're taking our categorical variables and converting them into a form to be provided to an ML algorithm.  To do that, we need to create some indexes, a lot of indexes.</p>
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Vectors" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_6.png" >}}
  </div>
  <div class="col-lg-4">
    <p>
      A <em>vector</em>, simply put, is a one row of input data, being that this is a feature vector we're using.  For instance here, we're assembling a feature vector with the different features of the mushrooms.
    </p>
    <p>
      We're then transforming our data frame into a feature vector, taking the first two results and displaying them, then printing the schema of the vector.
    </p>
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Create Test & Train Sets" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_7.png" >}}
  </div>
  <div class="col-lg-4">
    Here we're taking our feature vector we just created in the Spark 2 context and creating a test and train set.<br />
    What that means is that we're splitting the group of vectors into a random 80%/20% pool, from there we're creating the training set from the 80% split, and a test set from the 20%.  This percentage can differ but these are common and standard values.
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Train and Run Model" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_8.png" title="You can watch the progress bar go up and down as the Random Forest model is running" >}}
  </div>
  <div class="col-lg-4">
    Now that we've got the floor set, let's dance.<br /><br />
    We're creating a new Random Forest (or Random Decision Forest) classifier.  The Random Forest learning method will take a number of "trees" in our forest and through random classification and regression produce an informed decision.<br />
    Next we're building a classifier, and setting up a parameter grid map with three sets of decision trees at 50, 150, and 300 trees each.<br />Following that we're cross-validating, training the cross validating model, and making some selections and predictions.
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Evaluating the model" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_9.png" >}}
  </div>
  <div class="col-lg-4">
    First thing is we're setting up two binary classifiers and evaluating discrimination and precision among the predictions.  This value is represented as a percentage and called the <em>area under curve</em> values.  The higher the value means there's a higher level of assurance and precision among the predicted models.<br />
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Ranking evaluated features" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_10.png" title="Here we can see how named indexes are ranked" >}}
  </div>
  <div class="col-lg-4">
    Now that the model has been run and our data set has been evaluated with a series of Random Forest classification models, we can see the ranking of importance for determined features.  The classifier is fit with the test set, the features are gathered, and subsequently sorted and printed in order of determined importance and weight.
  </div>
{{< /twoSideStep >}}

{{< twoSideStep title="Final computation" >}}
  <div class="col-lg-8">
    {{< figureImage src="../images/hwx_ds101/mushroom_11.png" title="Much better than simple distribution analysis" >}}
  </div>
  <div class="col-lg-4">
    Just as we've done before with the Apache Spark 2 context, we can query the computed results easily with standard SQL query.<br /><br />
    The following paragraph gathers the computed results and echos out the count of determined edible and poisonous mushrooms.<br /><br />
    The key with this final paragraph is that earlier in the notebook we saw some distribution analysis that gave great insight into data at large, but was not able to give a high level of assurance whether a mushroom would be poisonous or not based off the features it had.  Now that we've computed this data set with Machine Learning functions we have much better peace of mind when evaluating the toxicity of fungi!
  </div>
{{< /twoSideStep >}}

{{< importPartial "footer/footer.html" >}}
