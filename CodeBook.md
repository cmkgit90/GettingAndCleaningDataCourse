# Getting and Cleaning Data Course Project

This course project uses data collected from the accelerometers from the Samsung Galaxy S smartphone.

See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

# Variables
* subject: correspond to the subjects who participated in the test
* activity: correspond to the activities performed. Possible values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.
* variable: correspond to each variable measured in the original data files the represent mean or standard deviation values.
* mean: average value computed for each subject, activity and variable.

# Data

The input data is organized in two sets, a training set and a test set, 
where each contains the following files:
* X file containing the measurements for the different variables
* Y file containing one column with the activities
* Subject file containing one column about the subjects

Besides the data files there are two additional files:
* features.txt Contains the names of the variables present in the X files.
The index corresponds to the variable index in the X file.
* activity_labels.txt Contains the names of the activities. 
The index of the activity corresponds to the value present in the Y files.

# Transformation
* All training and test sets were loaded and merged, so that X training and X test
were merged in X data, Y training and Y test were merged in Y data and 
Subject training and Subject test were merged in Subject data
* File feature.txt was loaded
* All columns that correspond to mean and standard deviation for each measurement 
were identified and extracted and set to the X data frame variable.
* In the Y data, activity indices were replaced by activity names
* In the X data, column names were updated according to the variable names
* In the Y data, column name was set ro "activity"
* In the Subject data, column name was set to "subject"
* X data was updated to contain subject, activity and variables.
* Tidy data frame was initialize to X data frame and a set of operations have been performed to tidy the data.
* First, the data frame was melted creating a data frame with subject, activity, variable and value.
* The data frame was grouped by subject, activity and variable.
* The grouped data frame was summarized to get the mean value for each subject, activity and variable.
* The output was saved in "output\tidy_data.txt"



	
