#Description
#Script for peer assessment exercise in course "Getting and cleaning data". More info in README.md and CodeBook.md.

#Creating tables
ColSubjectsTest <- read.table("/Users/camilla/Documents/R/UCI HAR Dataset/test/subject_test.txt", header=FALSE)

ColSubjectsTrain <- read.table("/Users/camilla/Documents/R/UCI HAR Dataset/train/subject_train.txt", header=FALSE)

#Subjects merged rowwise
ColSubjects <- rbind(ColSubjectsTest, ColSubjectsTrain)

#give header name to column (Subjects)
names(ColSubjects) <- "Subjects"


#Activities merged rowwise
ColActivitiesTest <- read.table("/Users/camilla/Documents/R/UCI HAR Dataset/test/y_test.txt", header=FALSE)

ColActivitiesTrain <- read.table("/Users/camilla/Documents/R/UCI HAR Dataset/train/y_train.txt", header=FALSE)

ColActivities <- rbind(ColActivitiesTest, ColActivitiesTrain)

#clarify Activity labels
ColActivities$V1[ColActivities$V1 == 1] <- "WALKING"
ColActivities$V1[ColActivities$V1 == 2] <- "WALKING_UPSTAIRS"
ColActivities$V1[ColActivities$V1 == 3] <- "WALKING_DOWNSTAIRS"
ColActivities$V1[ColActivities$V1 == 4] <- "SITTING"
ColActivities$V1[ColActivities$V1 == 5] <- "STANDING"
ColActivities$V1[ColActivities$V1 == 6] <- "LAYING"

#give header name to column (Activities)
names(ColActivities) <- "Activities"


#Features merged rowwise
ColFeaturesTest <- read.table("/Users/camilla/Documents/R/UCI HAR Dataset/test/x_test.txt", header=FALSE)

ColFeaturesTrain <- read.table("/Users/camilla/Documents/R/UCI HAR Dataset/train/x_train.txt", header=FALSE)

ColFeaturesHeaderRaw <- read.table("/Users/camilla/Documents/R/UCI HAR Dataset/features.txt", header=FALSE)

ColFeaturesHeader <- ColFeaturesHeaderRaw[,2]

ColFeatures <- rbind(ColFeaturesTest, ColFeaturesTrain)

#give header names to column from Features.txt file
names(ColFeatures) <- ColFeaturesHeader


#the 3 above created columns merged into 1 table
Table <- cbind(ColSubjects, ColActivities, ColFeatures)

# extract columns with header names subjects, activities, mean and std
TableMeanStd <- Table[,grep("subjects|activities|mean|std", names(Table), ignore.case=TRUE, value=TRUE)]


#the average of each variable for each activity and each subject
library(reshape2)
moltTableMeanStd <- melt(TableMeanStd, id = c("Subjects", "Activities"))
dcastTableMeanStd <- dcast(moltTableMeanStd, formula = Subjects + Activities ~ variable, mean)

write.csv(dcastTableMeanStd, file = "TidyData.txt")
