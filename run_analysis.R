### Getting and Cleaning Data Course Project

## Human Activity Recognition Using Smartphones Dataset 

## 1. Merge 'training' and 'test' sets to create a data set

# Loading required libraries
library(dplyr)

# Download file if it does not exist already in the working directory
zipfile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./DataCleaning")){dir.create("./DataCleaning")}
download.file(zipfile, "./DataCleaning", method = "curl")
if(!file.exists("UCI HAR Dataset")){unzip("./DataCleaning/UCI HAR Dataset")}

# Importing data labels: Activities of Daily Living (ADL) and Features (FTR)
ADL <- read.table("./UCI HAR Dataset/activity_labels.txt")
FTR <- read.table("./UCI HAR Dataset/features.txt")

# Importing the data sets 'training' and 'test'
TRAINid <- read.table("./UCI HAR Dataset/train/subject_train.txt")
TRAINx <- read.table("./UCI HAR Dataset/train/X_train.txt")
TRAINy <- read.table("./UCI HAR Dataset/train/Y_train.txt")

TESTid <- read.table("./UCI HAR Dataset/test/subject_test.txt")
TESTx <- read.table("./UCI HAR Dataset/test/X_test.txt")
TESTy <- read.table("./UCI HAR Dataset/test/y_test.txt") 

## Tyding up the data
# Rename columns for 'training' group 
colnames(TRAINx) = FTR[,2]
colnames(TRAINy) = "ActivityID"
colnames(TRAINid) = "Subject"
colnames(ADL) = c("ActivityID", "ActivityLabel")

# Rename columns for 'test' group 
colnames(TESTx) = FTR[,2]
colnames(TESTy) = "ActivityID"
colnames(TESTid) = "Subject"

# Get the sets for 'training' into one dataset
TRAIN <- bind_cols(TRAINid, TRAINy, TRAINx)

# Get the sets for 'test' into one dataset
TEST <- bind_cols(TESTid, TESTy, TESTx) 

# Merge 'training' and 'test' data sets into one data set
TotalDat <- rbind(TRAIN, TEST) 

## 2. Extract only the measurements on mean and standard deviation 
# for each measurement

# Get rid of duplicated columns
TotalDat_unique <- TotalDat[ , !duplicated(colnames(TotalDat))]

# Subset the measurements on mean and standard deviation
TotalDat_sub <- select(TotalDat_unique, Subject, ActivityID, 
                       matches(".*mean.*|.*std.*"))

## 3. Use descriptive activity names to name the activities in the data set
TotalDat_sub$ActivityID <- 
        factor(TotalDat_sub$ActivityID, levels = ADL[,1], labels = ADL[,2])

## 4. Label the data set with descriptive variable names

# Tyding up variable names
colnames(TotalDat_sub) <- gsub("[-()]", "", colnames(TotalDat_sub))

## 5. Create a second independent tidy data set with the average of each 
# variable for each activity and each subject

by_SubjectActivity <- TotalDat_sub %>% 
        group_by(Subject, ActivityID) %>%
        summarise_each(funs(mean))

write.table(by_SubjectActivity, "tidy_data.txt", row.name = FALSE)

write.table(variable.names(by_SubjectActivity), "variables.txt")

