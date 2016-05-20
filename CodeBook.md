---
title: "CodeBook"
---



This is a Code Book for Getting and Cleaning Data Course Project
--
# Introduction
The zip file includes data from two datasets, one with 70% of the subjects ('train' data) and another with 30% of the subjects ('test' data). Data is also available in separate sets for each group 'id', 'activity class labels' and 'list of all the features'. 
All this data combined contains 10299 observations and 563 variables. 

*Data source:*
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
--
The R script ```run_analysis.R``` includes code that does the following:

* Downloads the zipfile if it does not exist already in the working directory
* Imports the data labels for Activities of Daily Living ```ADL``` and Features ```FTR```
* Imports the data sets corresponding to the training group ```TRAINid```, ```TRAINx```, ```TRAINy``` and 
test group ```TESTid```, ```TESTx```, ```TESTy```

# Transformations to the original data:

* Renames variable names of each data set with descriptive names
* Binds the sets of each group into two single data sets ```TRAIN```and ```TEST```
* Merges the data into a single data set ```TotalDat```
* Eliminates duplicated column names to subset the desired data, selecting only the required columns (Mean and Std)
* Labels the activities with descriptive names using the variable ```ADL``` as a factor
* Tidys up all the data variables to get descriptive names
* Creates a second independent tidy data set ```tidy_data.txt```with the average of each variable for each activity and each subject. This final data set has 180 observations and 88 variables. 

---

*Variables and row numbers:*

* "1" "Subject"
* "2" "ActivityID"
* "3" "tBodyAccmeanX"
* "4" "tBodyAccmeanY"
* "5" "tBodyAccmeanZ"
* "6" "tBodyAccstdX"
* "7" "tBodyAccstdY"
* "8" "tBodyAccstdZ"
* "9" "tGravityAccmeanX"
* "10" "tGravityAccmeanY"
* "11" "tGravityAccmeanZ"
* "12" "tGravityAccstdX"
* "13" "tGravityAccstdY"
* "14" "tGravityAccstdZ"
* "15" "tBodyAccJerkmeanX"
* "16" "tBodyAccJerkmeanY"
* "17" "tBodyAccJerkmeanZ"
* "18" "tBodyAccJerkstdX"
* "19" "tBodyAccJerkstdY"
* "20" "tBodyAccJerkstdZ"
* "21" "tBodyGyromeanX"
* "22" "tBodyGyromeanY"
* "23" "tBodyGyromeanZ"
* "24" "tBodyGyrostdX"
* "25" "tBodyGyrostdY"
* "26" "tBodyGyrostdZ"
* "27" "tBodyGyroJerkmeanX"
* "28" "tBodyGyroJerkmeanY"
* "29" "tBodyGyroJerkmeanZ"
* "30" "tBodyGyroJerkstdX"
* "31" "tBodyGyroJerkstdY"
* "32" "tBodyGyroJerkstdZ"
* "33" "tBodyAccMagmean"
* "34" "tBodyAccMagstd"
* "35" "tGravityAccMagmean"
* "36" "tGravityAccMagstd"
* "37" "tBodyAccJerkMagmean"
* "38" "tBodyAccJerkMagstd"
* "39" "tBodyGyroMagmean"
* "40" "tBodyGyroMagstd"
* "41" "tBodyGyroJerkMagmean"
* "42" "tBodyGyroJerkMagstd"
* "43" "fBodyAccmeanX"
* "44" "fBodyAccmeanY"
* "45" "fBodyAccmeanZ"
* "46" "fBodyAccstdX"
* "47" "fBodyAccstdY"
* "48" "fBodyAccstdZ"
* "49" "fBodyAccmeanFreqX"
* "50" "fBodyAccmeanFreqY"
* "51" "fBodyAccmeanFreqZ"
* "52" "fBodyAccJerkmeanX"
* "53" "fBodyAccJerkmeanY"
* "54" "fBodyAccJerkmeanZ"
* "55" "fBodyAccJerkstdX"
* "56" "fBodyAccJerkstdY"
* "57" "fBodyAccJerkstdZ"
* "58" "fBodyAccJerkmeanFreqX"
* "59" "fBodyAccJerkmeanFreqY"
* "60" "fBodyAccJerkmeanFreqZ"
* "61" "fBodyGyromeanX"
* "62" "fBodyGyromeanY"
* "63" "fBodyGyromeanZ"
* "64" "fBodyGyrostdX"
* "65" "fBodyGyrostdY"
* "66" "fBodyGyrostdZ"
* "67" "fBodyGyromeanFreqX"
* "68" "fBodyGyromeanFreqY"
* "69" "fBodyGyromeanFreqZ"
* "70" "fBodyAccMagmean"
* "71" "fBodyAccMagstd"
* "72" "fBodyAccMagmeanFreq"
* "73" "fBodyBodyAccJerkMagmean"
* "74" "fBodyBodyAccJerkMagstd"
* "75" "fBodyBodyAccJerkMagmeanFreq"
* "76" "fBodyBodyGyroMagmean"
* "77" "fBodyBodyGyroMagstd"
* "78" "fBodyBodyGyroMagmeanFreq"
* "79" "fBodyBodyGyroJerkMagmean"
* "80" "fBodyBodyGyroJerkMagstd"
* "81" "fBodyBodyGyroJerkMagmeanFreq"
* "82" "angletBodyAccMean,gravity"
* "83" "angletBodyAccJerkMean,gravityMean"
* "84" "angletBodyGyroMean,gravityMean"
* "85" "angletBodyGyroJerkMean,gravityMean"
* "86" "angleX,gravityMean"
* "87" "angleY,gravityMean"
* "88" "angleZ,gravityMean"

