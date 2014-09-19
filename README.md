## run_analysis.R
##
## Written by: Zoltan Novak (novak.zoltan@gmail.com) / 2014-09-19
##
## 
## R script called run_analysis.R that does the following. 
## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive variable names. 
## 5) From the data set in step 4, creates a second, independent tidy data set with the average of 
##    each variable for each activity and each subject.
## 6) writes resulting data set to a file
## 
## 
## The script uses the below auxilary functions for the sake of easier readability and code efficiency
##
## loadActivity.R       - activities from file
## loadFeatureNames.R   - required variable names from file
## loadSubjects.R       - subject ID-s from file
## loadData.R           - data points from file
## 
## For more details, please read the guiding comments in the source code or contact the author 
## 
