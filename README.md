# Getting and Cleaning Data: Course Project

author: Andreia Carlos

date: 19 May 2016

This is a repository for the final project of the Coursera's Course: Getting and Cleaning Data

This project includes an R script called ```run_analysis.R``` that:
* Downloads the zipfile if it does not exist already in my working directory
* Imports the data labels for Activities of Daily Living ```ADL``` and Features ```FTR```
* Imports the data sets corresponding to the training group ```TRAINid```, ```TRAINx```, ```TRAINy``` and 
test group ```TESTid```, ```TESTx```, ```TESTy```
* Renames variable names of each data set with descriptive names
* Binds the sets of each group into two single data sets ```TRAIN```and ```TEST```
* Merges the data into a single data set ```TotalDat```
* Eliminates duplicated column names to subset the desired data
* Subsets the data selecting only the required columns (Mean and Standard Deviation)
* Labels the activities with descriptive names using the variable ```ADL``` as a factor
* Tidys up all the data variables
* Creates a second independent tidy data set ```tidy_data.txt```with the average of each variable for each activity and each subject.

