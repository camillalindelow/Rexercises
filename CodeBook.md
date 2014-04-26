This is the codebook for ...

Data
30 test persons (subjects) performing 6 activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, LAYING, STANDING)
Variables
Features measured
Raw signals captured from accelerometer and gyroscope are denoted Acc-XYZ and Gyro-XYZ (XYZ for 3-axial). prefix t- denotes time (time domain signals). The acceleration signal was further divided into body (BodyAcc-XYZ) and gravity (GravityAcc-XYZ) signals. Jerk signals were derived from body linear acceleration (BodyAccJerk-XYZ) and angular velocity (BodyGyroJerk-XYZ).The magnitude of the signals were measured, denoted with a suffix -mag.A Fast Fourier Transform (FFT) was also applied, denoted with prefix f-. A list of all signals captured:
*tBodyAcc-XYZ
*tGravityAcc-XYZ
*tBodyAccJerk-XYZ
*tBodyGyro-XYZ
*tBodyGyroJerk-XYZ
*tBodyAccMag
*tGravityAccMag
*tBodyAccJerkMag
*tBodyGyroMag
*tBodyGyroJerkMag
*fBodyAcc-XYZ
*fBodyAccJerk-XYZ
*fBodyGyro-XYZ
*fBodyAccMag
*fBodyAccJerkMag
*fBodyGyroMag
*BodyGyroJerkMag

variables for the above-mentioned signals used in this analysis (a subset of the original analysis) are mean and standard deviation values.

Additional mean values were captured by averaging the signals in a signal window sample. These were denoted as follows:
*gravityMean
*tBodyAccMean
*tBodyAccJerkMean
*tBodyGyroMean
*tBodyGyroJerkMean

The total sum of features in this subset is 86.

data cleaning process
