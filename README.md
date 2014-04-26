Course project for the course "Getting and cleaning data" given by John Hopkins University/Coursera platform
Submitted April 26 2014

Dataset from "Human Activity Recognition Using Smartphones Dataset"
Version 1.0
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
Dataset downloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

CodeBook.md (in this repo) describes variables, the data, and the data cleaning process performed by run_analysis.R

The project consisted of merging several files from the dataset into one dataset. From this dataset, Mean and Std features where extracted. The variable Activity had to be relabeled with descriptive names. Finally, a second dataset had to be created with average of each feature (Mean and Std) for each Activity and Subject.

Procedure
* File storage: The downloaded dataset was saved to a R-folder (/Users/camilla/Documents/R), set as working directory.
* Constructing one dataset: Variables (Subjects, Activities and Features) were stored in separate files in the original dataset. These were further divided in two sets, Test and Train. To first add Test and Train rowwise and then add the variables columnwise seemed a logical approach.
* Headers: The initial data didn't have headers, so that is added along the way. Headers for features were taken from the file features.txt
* Activity labels: The Activity variables were initially coded 1:6, these were relabeled in a more descriptive manner using the key in file activity_labels.txt. This was done before merging all the columns into one table.
* Extract features containing Mean and Std values: This was interpreted as meaning all features contaning the words mean or std, resulting in 86 features out of the initial 561.
* Counting the Mean and Std for each Activity and Subject: This was interpreted as finding mean values for each subject (30) and then for each activity (6) performed by that subject. This gave a total of 30*6 mean values for the 86 features.
* The resulting data.table was saved as a csv-separated file for uploading to the course site.


