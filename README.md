### Overview

The **run_analysis.R** script creates a tidy data set **tidydata.txt** using data collected from the accelerometers from the Samsung Galaxy S smartphone [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ).  A full description is available at the site where the data was obtained: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The run_analysis.R script performs the following tasks:

1. Load raw data files
2. Combine datasets and reshape the resulting dataset.
3. Label activity and feature with descriptive names.
4. Extract data of mean and standard deviation features and reshape the resulting dataset.
5. Export the extracted dataset as tidydata.txt.


### How to run the script

Before running run_analysis.R, install below packages if you you do not have them installed already.

```S
install.packages("reshape")

install.packages("stringr")
```

To generate tidydata.txt using run_analysis script, perform the following steps:

1. Use source() to load run_analysis.R script. You must provide a correct path to the script. Eg. source('~/TidyData/run_analysis.R')

2. Enter working directory when prompted and hit enter. Working directory should be the directory that contains test directory, train directory, features.txt, activity_labels.txt, etc.

3. If the script runs successfully, you should see below messages in the console. And tidydata.txt file should be created in the working directory.

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

1. Load raw data files using read.table(). Files loaded are:
  a. activity_labels.txt
  b. features.txt
  c. /test/subject_test.txt
  d. /test/X_test.txt 
  e. /test/y_test.txt
  f. /train/subject_train.txt
  g. /train/X_train.txt
  h. /train/y_train.txt
2. Combine training subjects, labels and measurements into one dataset using cbind.
3. Combine test subjects, labels and measurements into one dataset using cbind
4. Combine the training dataset and test dataset created in step 2 and step 3 using rbind.
5. Melt the dataset created in step 4 from wide format to narrow format preparing for labeling activity and feature names in step 6.
6. Merge activity_labels and features datasets with tidy dataset to label activity and feature with descriptive names.
7. Extract data of mean and standard deviation features using grepl then cast the dataset from narrow format to wide format.
8. Export the dataset created in step 7 as tidydata.txt.

### Output

The final output is as tidydata.txt created in the working directory. It contains subject, activity, and features mean of each variable which are of mean and standard deviation features, for each activity and each subject. 
