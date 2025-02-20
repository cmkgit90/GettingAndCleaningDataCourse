#
# Getting and Cleaning Data Course
# Course Project
#
run_analysis <- function() {

	# load packages
	library(reshape2)
	library(dplyr)

	#
	# 1. Merges the training and the test sets to create one data set.
	#

	# Load train data frames
	x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
	y_train <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
	subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

	# Load test data frames
	x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
	y_test <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
	subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

	# Merge data frames together
	x_data <- rbind(x_train, x_test)
	y_data <- rbind(y_train, y_test)
	subject_data <- rbind(subject_train, subject_test)

	#
	# 2. Extracts only the measurements on the mean and standard deviation 
	# for each measurement.
	#

	# Read features and set the name of the variables in x_data
	feature_data <- read.table("./data/UCI HAR Dataset/features.txt")
	colnames(x_data) <- feature_data[,2]

	# Get all features with -mean() or -std()
	measurements_mean_std_cols <- grep("(-mean|-std)\\(\\)", feature_data[,2])
	x_data <- x_data[,measurements_mean_std_cols]

	#
	# 3. Uses descriptive activity names to name the activities in the data set
	#
	activity_label <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
	y_data[,1] <- activity_label[y_data[,1],2]

	#
	# 4. Appropriately labels the data set with descriptive variable names. 
	#
	colnames(y_data) <- "activity"
	colnames(subject_data) <- "subject"

	# Merge everything in a single table
	x_data <- cbind(subject_data, y_data, x_data)

	# 5. From the data set in step 4, creates a second, independent tidy data 
	# set with the average of each variable for each activity and each 
	# subject.

	tidy_data <- tbl_df(x_data)
	tidy_data <- tidy_data %>%
		melt(id.vars=c("subject","activity")) %>%
		group_by(subject, activity, variable) %>%
		summarise(mean=mean(value))

	# Write tidy data	
	if (!file.exists("./output")) {
		dir.create("./output")
	}
	write.table(tidy_data, file="./output/tidy_data.txt", row.names=FALSE)
}

