## get user input to set working directory
wd <- readline(prompt="Please enter working directory:")
setwd(wd)
writeLines("seting directory")
directory <- getwd()

## install library
writeLines("installing library")
library(reshape)
library(stringr)

## load files
writeLines("loading files")
activity_labels <- read.table(paste0(directory,"/UCI HAR Dataset/activity_labels.txt"))
features <- read.table(paste0(directory,"/UCI HAR Dataset/features.txt"))
subject_test <- read.table(paste0(directory,"/UCI HAR Dataset/test/subject_test.txt"))
X_test <- read.table(paste0(directory,"/UCI HAR Dataset/test/X_test.txt"))
y_test <- read.table(paste0(directory,"/UCI HAR Dataset/test/y_test.txt"))
subject_train <- read.table(paste0(directory,"/UCI HAR Dataset/train/subject_train.txt"))
X_train <- read.table(paste0(directory,"/UCI HAR Dataset/train/X_train.txt"))
y_train <- read.table(paste0(directory,"/UCI HAR Dataset/train/y_train.txt"))

##combine training subjects, labels and measurements
writeLines("combining training subjects, labels and measurements")
train <- cbind(subject_train, y_train, X_train)

##combine test subjects, labels and measurements
writeLines("combining test subjects, labels and measurements")
test <- cbind(subject_test, y_test, X_test)

##combine training and test data
writeLines("combining training and test data")
total <- rbind(train, test)

##change column names
colnames(total)[1] <- "subject"
colnames(total)[2] <- "activity"

##rename features by removing V so we can match by feature ID
names(total) <- str_replace(names(total), "V", "")

##melt data set from wide data to narrow data
writeLines("melting change data set from wide data to narrow data")
tidy <- melt(total, id=c("activity", "subject"))

##rename activity label column name
colnames(activity_labels)[1] <- "activity"

##merge activity_labels data sets with tidy data set
writeLines("merging activity_labels data sets with tidy data set")
tidy <- merge(activity_labels, tidy, x.by="activity", y.by="activity")[,-c(1)]

##change column names
colnames(tidy)[1] <- "activity"
colnames(features) <- c("variable", "feature")

##merge tidy data set with features data set
writeLines("merging tidy data set with features data set")
tidy <- merge(features, tidy, x.by="variable", y.by="variable")[,-c(1)]

##create a data set with only mean and std feature
writeLines("creating a data set with only mean and std feature")
pattern <- "mean\\(\\)|std\\(\\)"
meanstd <- tidy3[grepl(pattern, tidy$feature),]
tidy <- meanstd[c("subject", "activity", "feature", "value")]

writeLines("creating a wide form of the data set")
result <- cast(tidy, subject+ activity ~ feature, mean, value='value')

##write the result data set to a text file
writeLines("writing the result data set to a text file") 
write.table(result, "tidydata.txt", sep="\t") 

writeLines("result data set tidydata.txt created") 


