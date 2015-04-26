# The Script
# Set the WD
# setwd("C:/Users/kaseyriver11/Desktop/Data Science Classes/Getting and Cleaning Data")

if(!file.exists("./data")){dir.create("./data")}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir="./data")

setwd("C:/Users/kaseyriver11/Desktop/Data Science Classes/Getting and Cleaning Data/data/UCI HAR Dataset")

# Part 1
# Read in all of the files
# Test Files
y.test  <- read.table(file.path("test/Y_test.txt"), header = FALSE)         # Activity
x.test  <- read.table(file.path("test/X_test.txt"), header = FALSE)         # Read Features
sub.test <- read.table(file.path("test/subject_test.txt"), header = FALSE)  # Subject
# Train Files
y.train <- read.table(file.path("train/Y_train.txt"), header = FALSE)       # Activity
x.train <- read.table(file.path("train/X_train.txt"), header = FALSE)       # Read Features
sub.train <- read.table(file.path("train/subject_train.txt"), header = FALSE) # Subject


# Merge the Data Set
subject  <- rbind(sub.test, sub.train)
features <- rbind(x.test, x.train)
activity <- rbind(y.test, y.train)

# Name your dframes
names(subject)  <- c("Subject")
names(activity) <- c("Activity")
Features_Names  <- read.table(file.path("features.txt"),head=FALSE)
names(features) <- Features_Names$V2

# Combine it all!
combine <- cbind(subject, activity)
data    <- cbind(combine, features)

# Part 2
# Find the names with "mean" and "std" in them
Features_Names2 <- Features_Names$V2[grep("mean\\(\\)|std\\(\\)", Features_Names$V2)]

# Subset accordingly
use_names   <- c("Subject", "Activity", as.character(Features_Names2))
data        <- subset(data, select=use_names)


# Part 3
activity_labels <- read.table(file.path("activity_labels.txt"),header = FALSE)

library(plyr)
data$Activity <- as.character(data$Activity)
data$Activity <- revalue(data$Activity, c("1"="WALKING", "2"="WALKING_UPSTAIRS", "3"="WALKING_DOWNSTAIRS",
                         "4"="SITTING", "5"="STANDING", "6"="LAYING"))
head(data$Activity,30)

# Part 4

names(data)<-gsub("^t", "time", names(data))
names(data)<-gsub("^f", "frequency", names(data))
names(data)<-gsub("Acc", "Accelerometer", names(data))
names(data)<-gsub("Gyro", "Gyroscope", names(data))
names(data)<-gsub("Mag", "Magnitude", names(data))
names(data)<-gsub("BodyBody", "Body", names(data))

# Part 5

data2 <- aggregate(. ~Subject + Activity, data, mean)
data2 <- data2[order(data2$Subject, data2$Activity),]
write.table(data2, file = "tidydata.txt",row.name=FALSE)











