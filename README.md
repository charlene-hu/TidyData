### Overview

The **run_analysis.R** scripts create a tidy data set **tidydata.txt** using data collected from the accelerometers from the Samsung Galaxy S smartphone [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ).  A full description is available at the site where the data was obtained: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The run_analysis.R scripts perform the following tasks:

1. Load raw data files.
2. Combine datasets and reshape the combined dataset.
3. Label activity and feature with descriptive names.
4. Extract data of mean and standard deviation features and reshape the extracted dataset.
5. Export the extracted dataset as tidydata.txt.


### How to run the scripts

Before running run_analysis.R, install below packages if you you do not have them installed already.

```S
install.packages("reshape")
install.packages("stringr")
```

To generate tidydata.txt using run_analysis.R, perform the following steps:

1. Use source() to load run_analysis.R script file. You must provide a correct path to the script file. For example:

```s
source('~/TidyData/run_analysis.R')
```

2. Enter working directory when prompted and hit enter. Working directory should be the directory that contains test directory, train directory, features.txt, activity_labels.txt, etc.

3. If the scripts run successfully, you should see below messages in the console. And tidydata.txt file should be created in the working directory.

```s
setting directory...
installing library...
loading files...
combining training subjects, labels and measurements...
combining test subjects, labels and measurements...
combining training and test data...
melting dataset from wide format to narrow format..
merging activity_labels dataset with tidy dataset...
merging tidy dataset with features dataset...
extract data of mean and standard deviation features...
creating a wide form of the dataset...
writing the result dataset to a text file...
result dataset tidydata.txt created
```

### How the scripts work
<ol>
<li>Load raw data files using read.table(). Files loaded are:
<ol>
  <li> activity_labels.txt</li>
  <li> features.txt</li>
  <li> /test/subject_test.txt</li>
  <li> /test/X_test.txt</li> 
  <li> /test/y_test.txt</li>
  <li> /train/subject_train.txt</li>
  <li> /train/X_train.txt</li>
  <li> /train/y_train.txt</li>
</ol>
</li>
<li> Combine training subjects, labels and measurements into one dataset using cbind.
<li> Combine test subjects, labels and measurements into one dataset using cbind
<li> Combine the training dataset and test dataset created in step 2 and step 3 using rbind.
<li> Melt the dataset created in step 4 from wide format to narrow format preparing for labeling activity and feature names in step 6.
<li> Merge activity_labels and features datasets with tidy dataset to label activity and feature with descriptive names.
<li> Extract data of mean and standard deviation features using grepl then cast the dataset from narrow format to wide format.
<li> Export the dataset created in step 7 as tidydata.txt.

### Output

The final output is as tidydata.txt created in the working directory. It contains subject, activity, and features mean of each variable which are of mean and standard deviation features, for each activity and each subject. 
