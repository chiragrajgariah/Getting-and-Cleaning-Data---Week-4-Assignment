Getting and Cleaning Data - Week 4 Assignment

This repo was created to complete the peer-graded week 4 assignment in coursera in Getting & Cleaning Data

Steps:
1. Download and unzip the file
2. Set your working directory to the path where you unzipped the file
3. Download "run_analysis.R" code into your working directory
4. Execute this file to get the Tidy Data set. It should look like the file "TidyData.txt", the one contained in this repo.

Data Description : The variables in the data X are sensor signals measured with waist-mounted smartphone for 30 subjets. The variable in the Y data indicates activity type the subjects performed during the recording.

Code Explanation : The code extracted the data in the zip file, merged them together, labled the variables appropriately, before finally putting it into a table.

The code was written based on the instructions given in the assignment

The steps followed are: 

    Merges the training and the test sets to create one data set.

    Extracts only the measurements on the mean and standard deviation for each measurement.

    Uses descriptive activity names to name the activities in the data set.

    Appropriately labels the data set with descriptive variable names.

    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
