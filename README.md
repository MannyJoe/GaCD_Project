---
title: "README.md"
author: "Manny joe"
date: "Friday, February 20, 2015"
output: html_document
---

### PART I. PREPARATIVE STEPS

1.    Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to your R (or R Studio) working directory.

2.	Ensure that The zip created folders "./UCI HAR Dataset/UCI HAR Dataset/" and the `run_analysis.R` script are located in the R working directory.

3.	Run the `run_analysis.R` script from the working directory in R.

### PART II. THE RUN_ANALYSIS.R WALK-THROUGH

**STEP 0. SCRIPT SUMMARY AND DESCRIPTION OF DOWNLOADED FILES**

The `run_analysis.R` script produces a tidy dataset derived from *Human Activity Recognition Using Smartphones* Data Set, based on the course project instructions.  The script executes the following:

* Clears any existing vectors from the working memory.

* Loads the `data.table` library and has a comment line ready to install the `data.table` package, if necessary.

* Installs necessary packages, if needed.

The zip file has been previously downloaded via Coursera page and the files have been unzipped and saved to the default R working directory:
```
./UCI HAR Dataset/UCI HAR Dataset/
      * features.txt (includes Mean and Standard deviation values needed for Course project, Step 2)
      * activity_labels.txt (contains the descriptive activities needed for Step 3)

./UCI HAR Dataset/UCI HAR Dataset/test/
      * subject_test.txt (Subject's info: 1 - 30)
      * X_test.txt (accelerometer test set)
      * y_test.txt (accelerometer test labels)
      * other files not used for this project

 ./UCI HAR Dataset/UCI HAR Dataset/train/
      * subject_train.txt (Subject's info: 1 -30)
      * X_train.txt (accelerometer train set)
      * y_train.txt (accelerometer train labels)
      * other files not used for this project
```
**STEP 1. MERGE THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET.**

For step 1, the script executes the following:

* Read the data in:

      + Read in *test* data with `read.table`
      + Read in *train* data with `read.table`  

* Merge the data:

      + row combine the *test* and *train* **variables** with `rbind`
      + row combine the *test* and *train* **labels** with `rbind`
      + row combine the *test* and *train* **Subjects** with `rbind` 
      + Create an overall merged dataset for review prior to implementing steps 2 to 4 with a column combine `cbind`

**STEP 2. EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT.**

For step 2, the script executes the following:

* Read in the "features.txt"", which includes *mean* and *standard deviation* values.

      + *__Note:__ I used Wordpad to review "features.txt"" and searched "mean" and "std" to begin with and I noticed labels that included "mean" as part of their name **without** analogous "std"" variables.  I limited the inclusion of 1) Mean values to variables that had "mean()" in their labels in order to match the 2) Standard variables available.*

The script continues to execute the following:

* Extract *mean* and *standard deviation* values from features dataset using `grep`, also known as *Global Regular Expression Print*, for values identified with labels that include "mean()" and "std()".  Using backslash to escape metacharacters `(` and `)`. A second backslash (\\) is used for escaping metacharacter `\` itself.

* Create tidy column headers

**STEP 3. USES DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET.**

For step 3, the script executes:

* Read in activity labels

* Provide headers for the activities dataset

**STEP 4. APPROPRIATELY LABELS THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES.**

For step 4 the script executes the following:

* Add descriptive headers to Labels and Subject datasets

* Prepare pre-tidy dataset with column combine `cbind`

* Save pre-tidy file for review prior to creating the tidy data

**STEP 5. FROM THE DATA SET IN STEP 4, CREATES A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT.**

For step 5, the scripts executes the following:

* Set up data table for tidyData

* Calculate the mean of each measurement (each column) by 'Subject' and 'Activity' using `data.table` "Subset Data" function `.SD`

* Sort by Subject and Activity

* To avoid reviewing the the "tidyData.txt"" file in Notepad, per "David's Course Project FAQ" discussion board, this script executes:

      `reviewData <- read.table("./tidyData.txt", header = TRUE)`  
      `View(reviewData)`