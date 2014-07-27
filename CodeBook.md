Code Book
========================================================
##Summary##

The dataset in **tidydata.txt** is extracted from the raw data collected from the accelerometers from the Samsung Galaxy S smartphone [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ).  A full description is available at the site where the data was obtained: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The scripts used to generate this dataset are in run_analysis.R. Please refer to README.md for details of how the scripts work.

In the dataset, there are total 68 columns. The first column is subject, which are the volunteers in the experiments. The second column is activity, which are the activities volunteers performed during the experiments. Column 3 to 68 are measurement features, which are the mean of the meansurement of the feature for each activity and each subject. Feature measurements are normalized and bounded within [-1,1].

##Dictionary##

**Subject** 1
subject id: integer, range 1 to 30.

**activity** 2 
activity name: String, descriptive label of the activity. 

```s
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING
```

**feature variables** 3 - 68
feature variable name: numeric, normalized and bounded within [-1,1].. Feature variable names from column 3 to column 68 are as follows:

```s
fBodyAcc-mean()-X
fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X      
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()         
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std() 
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyGyro-mean()-X
fBodyGyro-mean()-Y        
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z          
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X           
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z       
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyAccMag-mean()
tBodyAccMag-std()          
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X          
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y    
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z     
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X        
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tGravityAccMag-mean()
tGravityAccMag-std()
```



  


