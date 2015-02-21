###################################
###################################
###                             ###
###  Getting and Cleaning Data  ###
###       Course Project        ###
###       run_analysis.R        ###
###                             ###
###################################
###################################

### Clear any existing vectors ###

      ls()
      rm(list=ls())

### Install necessary packages ###

# Check to see if you have 'data.table' installed; 
# note package names are case sensitive:

      library("data.table")
      
# install.packages("data.table")    # if needed

### Download Zip file ###

# Zip file downloaded via Coursera page and saved to R Studio working directory
# File unzipped and resulting %.txt files saved to:

      # ./UCI HAR Dataset/UCI HAR Dataset/
            # features.txt (includes Mean and Std values of data for Step 2)
            # activity_labels.txt (contains descriptive activities for Step 3)

      # ./UCI HAR Dataset/UCI HAR Dataset/test/
            # subject_test.txt (Subject's info: 1 -30)
            # X_test.txt (accelerometer test set)
            # y_test.txt (accelerometer test labels)
            # other files not used for this project

      # ./UCI HAR Dataset/UCI HAR Dataset/train/
            # subject_train.txt (Subject's info: 1 -30)
            # X_train.txt (accelerometer train set)
            # y_train.txt (accelerometer train labels)
            # other files not used for this project

############################################################################
##                                                                        ##
##  Step 1. Merge the training and the test sets to create one data set.  ##
##                                                                        ##
############################################################################

### Read the data in ###

# Read in test data
      
      testData <- read.table("./UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
            dim(testData)
      
      testLab <- read.table("./UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt") 
            dim(testLab)
            
      testSub <- read.table("./UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
            dim(testSub)
            
# Read in train data

      trainData <- read.table("./UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
            dim(trainData)
      
      trainLab <- read.table("./UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
            dim(trainLab)     
      
      trainSub <- read.table("./UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
            dim(trainSub)

### Merge the data ###

# Merge the test and train datasets with row combine
      
      mergedData <- rbind(testData, trainData)
            dim(mergedData)
      
# Merge the test and train labels with row combine
      
      mergedLab <- rbind(testLab, trainLab)
            dim(mergedLab)
      
# Merge the test and train Subjects with row combine
      
      mergedSub <- rbind(trainSub, testSub)
            dim(mergedSub)

# Create merged dataset for review prior to implementing steps 2 to 4.

      tmpMgdDataset <- cbind(mergedSub, mergedLab, mergedData)
            dim(tmpMgdDataset)

################################################################################
##                                                                            ##
##  Step 2. Extract only the measurements on the mean and standard deviation  ##
##  for each measurement.                                                     ##
##                                                                            ##
################################################################################

# Read in the features.txt, which includes mean and standard deviation values.

# Used Wordpad to review features.txt and searched "mean" and "std", switched
# to "mean()" and "std()" for uniformity, because "std" doesn't have matching
# long names like "mean".

      features <- read.table("./GaCDdata/features.txt")
            dim(features)

# Extract mean and std dev values from features dataset using grep, aka 
# Global[ly search a] Regular Expression [and] Print, for values identified with
# labels that include "mean()" and "std()".  Using backslash to escape 
# metacharacters "(", ")", and second backslash for escaping "\" itself.

      meanSD <- grep("mean\\(\\)|std\\(\\)", features[, 2])
            dim(meanSD)       # NULL
            str(meanSD)       # 66 integers

      mergedData <- mergedData[, meanSD]
            dim(mergedData)
            names(mergedData)
      
# Create tidy column headers:
   
      # capitalize mean
            names(mergedData) <- gsub("mean", "Mean", names(mergedData),
                                      ignore.case = FALSE)
      # capitalize std
            names(mergedData) <- gsub("std", "Std", names(mergedData),
                                      ignore.case = FALSE)
      # remove "()"
            names(mergedData) <- gsub("\\(\\)", "", features[meanSD, 2])
      
      # remove dashes
            names(mergedData) <- gsub("-", "", names(mergedData))

      names(mergedData)

ls()

#############################################################################
##                                                                         ##
##  Step 3. Uses descriptive activity names to name the activities in the  ##
##  data set.                                                              ##
##                                                                         ##
#############################################################################

# Read in activity labels

      activities <- read.table("./GaCDdata/activity_labels.txt")
            dim(activities)
      #      table(activities)
      #      class(activities)

# Provide headers for activities dataset

      names(activities) <-c('activityNo', 'activityName')
            dim(activities)
      #      table(activities)
      #      class(activities)

      mergedLab[ ,1] = activities[mergedLab[ ,1], 2]
            dim(mergedLab)
      #      str(mergedLab)
      #      class(mergedLab)
            names(mergedLab)
      #      table(mergedLab)


###########################################################################
##                                                                       ##
##  Step 4. Appropriately labels the data set with descriptive variable  ##
##  names.                                                               ##
##                                                                       ##
###########################################################################

# Add descriptive headers to Labels and Subject datasets

      names(mergedLab) <- "Activity"
      names(mergedSub) <- "Subject"

      names(mergedLab)
      names(mergedSub)

# Prepare pre-tidy dataset with column combine

      mergedDataset <- cbind(mergedSub, mergedLab, mergedData)
      #      str(mergedDataset)
            dim(mergedDataset)
      #      class(mergedDataset)

# Save pre-tidy file for review prior to tidy data

      write.table(mergedDataset, file = "mergedDataSet.txt",
                  row.names = FALSE)

###########################################################################
##                                                                       ##
##  Step 5. From the data set in step 4, creates a second, independent   ##
##  tidy data set with the average of each variable for each activity    ##
##  and each subject.                                                    ##
##                                                                       ##
###########################################################################

# Set up data table for tidyData

      tmpTidyData <- data.table(mergedDataset)

# Calculate the mean of each measurement (each column) by 'Subject' and
# 'Activity' using data.table "Subset Data" function (.SD)

      tmpTidyData2 <- tmpTidyData[ , lapply(.SD, mean), by = 'Subject,Activity'] # No space after comma

# Sort by Subject and Activity

      tidyData <- tmpTidyData2[order(Subject, Activity)]

# If needed, view data descriptives

      class(tidyData)
      dim (tidyData)
      object.size(tidyData)
      print(object.size(tidyData), units = "Mb")
#      names(tidyData)
#      head(tidyData)
#      tail(tidyData)
#      summary(tidyData)
#      str(tidyData)

# Write and save 'tidyData.txt'

      write.table(tidyData, file = "tidyData.txt", row.names = FALSE)

# To avoid reviewing in Notepad, per "David's Course Project FAQ" discussion
# board:

      reviewData <- read.table("./tidyData.txt", header = TRUE)
      View(reviewData)