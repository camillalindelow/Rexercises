This is the codebook for:
Course project for the course "Getting and cleaning data" given by John Hopkins University/Coursera platform Submitted April 26 2014

Dataset from "Human Activity Recognition Using Smartphones Dataset" Version 1.0 Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 Dataset downloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Data collected
Feature vaiables (see below) were collected for 30 test persons (Subjects) performing 6 activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, LAYING, STANDING).

###Variables
Features measured
Raw signals captured from accelerometer and gyroscope are denoted Acc-XYZ and Gyro-XYZ (suffix -XYZ denoting 3-axial). prefix t- denotes time (time domain signals). The acceleration signal was further divided into body (BodyAcc-XYZ) and gravity (GravityAcc-XYZ) signals. Jerk signals were derived from body linear acceleration (BodyAccJerk-XYZ) and angular velocity (BodyGyroJerk-XYZ).The magnitude of the signals were measured, denoted with a suffix -mag.A Fast Fourier Transform (FFT) was also applied, denoted with prefix f-. A list of all signals captured:
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* BodyGyroJerkMag

variables for the above-mentioned signals used in this analysis (a subset of the original analysis) are mean and standard deviation values.

Additional mean values were captured by averaging the signals in a signal window sample. These were denoted as follows:
*gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The total sum of features in this subset is 86.

###Data cleaning process


