# Getting and Cleaning Data Course Project

This course project uses data collected from the accelerometers from the Samsung Galaxy S smartphone.

See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

# Variables
* subject
* activity
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y 
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()

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
were identified using grep
* These columns have been extracted and set to X data frame
* In the Y data, activity indices were replaced by activity names
* In the X data, variable indices were replaced by variable names
* In the Y data, variable index was replaced by "activity"
* In the Subject data, variable index was replaced by "subject" name
* In the X data frame, columns for activity and subject were added binding
this data frame with the Y data and Subject data frames.
* The tidy data frame was created by applying the column mean function according to the subject and the activity
* The output was saved in "output\tidy_data.txt"



	
