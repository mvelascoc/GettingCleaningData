## CODE FOR Getting and Cleaning Data Coursera for August 2014 Class Project
##  Author: mvelasco

## Merges the training and the test sets to create one data set.
path <- "../UCI HAR Dataset/"
subjectTest <- read.table(paste(path,"test/subject_test.txt", sep = ""), sep =" ")
xTest <- read.table(paste(path,"test/X_test.txt", sep = ""))
yTest <- read.table(paste(path,"test/Y_test.txt", sep = ""), sep =" ")
subjectTrain <- read.table(paste(path,"train/subject_train.txt", sep = ""), sep =" ")
xTrain <- read.table(paste(path,"train/X_train.txt", sep = ""))
yTrain <- read.table(paste(path,"train/Y_train.txt", sep = ""), sep =" ")

trainData <- data.frame(subjectTrain, yTrain, xTrain )
testData <- data.frame(subjectTest, yTest, xTest )

data <- rbind(trainData, testData)  # this is the complete set
namesData <- names(data)
namesData[1] <- "Subject"
namesData[2] <- "Activity"
namesData[3] <- "V1"
colnames(data) <- namesData

## Extracts only the measurements on the mean and standard deviation 
##    for each measurement. 

subdataVectors <- c("Subject", "Activity", "V1", "V2", "V3", "V4", "V5", "V6", 
                    "V41", "V42", "V43", 
                    "V44", "V45", "V46", "V81", "V82", "V83", "V84", "V85", 
                    "V86", "V121", "V122", "V123", "V124", "V125", "V126", 
                    "V161", "V162", "V163", "V164", "V165", "V166", "V201",
                    "V202", "V214", "V215", "V227", "V228", "V240", "V241",
                    "V253", "V254", "V266", "V267", "V268", "V269", "V270",
                    "V271", "V345", "V346", "V347", "V348", "V349", "V350",
                    "V424", "V425", "V426", "V427", "V428", "V429", "V503",
                    "V504", "V516", "V517", "V529", "V530", "V542", "V543")
                    
subdata <- data[subdataVectors]
                    
## Uses descriptive activity names to name the activities in the data set

subdata$Activity[subdata$Activity == "1"] <- "WALKING" 
subdata$Activity[subdata$Activity == "2"] <- "WALKING_UPSTAIRS" 
subdata$Activity[subdata$Activity == "3"] <- "WALKING_DOWNSTAIRS" 
subdata$Activity[subdata$Activity == "4"] <- "SITTING" 
subdata$Activity[subdata$Activity == "5"] <- "STANDING" 
subdata$Activity[subdata$Activity == "6"] <- "LAYING" 

## Appropriately labels the data set with descriptive variable names. 
subdataNames <- c("Subject", "Activity", "tBodyAcc-mean()-X", "tBodyAcc-mean()-Y",
                  "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y",
                  "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y",
                  "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y",
                  "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y",
                  "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y",
                  "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y",
                  "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y",
                  "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y",
                  "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y",
                  "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()",
                  "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()",
                  "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()",
                  "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X",
                  "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X",
                  "fBodyAcc-std()-Y", "fBodyAcc-std()-Z",  "fBodyAccJerk-mean()-X",
                  "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z",  "fBodyAccJerk-std()-X",
                  "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X",
                  "fBodyGyro-mean()-Y",  "fBodyGyro-mean()-Z",  "fBodyGyro-std()-X",
                  "fBodyGyro-std()-Y",  "fBodyGyro-std()-Z",  "fBodyAccMag-mean()",
                  "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()",  "fBodyBodyAccJerkMag-std()",
                  "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()",
                  "fBodyBodyGyroJerkMag-std()")                    

colnames(subdata) <- subdataNames

## Creates a second, independent tidy data set with the average of each 
##    variable for each activity and each subject. 

secondDataSet <- aggregate( V1 ~ Subject + Activity, data, mean )
tempDataSet <-  aggregate( V2 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V3 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V4 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V5 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V6 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V41 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V42 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V43 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V44 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V45 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V46 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V81 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V82 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V83 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V84 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V85 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V86 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V121 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V122 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V123 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V124 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V125 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V126 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V161 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V162 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V163 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V164 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V165 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V166 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V201 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V202 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V214 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V215 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V227 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V228 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V240 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V241 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V253 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V254 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V266 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V267 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V268 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V269 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V270 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V271 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V345 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V346 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V347 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V348 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V349 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V350 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V424 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V425 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V426 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V427 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V428 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V429 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V503 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V504 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V516 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V517 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V529 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V530 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V542 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))
tempDataSet <-  aggregate( V543 ~ Subject + Activity, data, mean )
secondDataSet <-  merge(secondDataSet, tempDataSet,  by=c("Subject","Activity"))

colnames(secondDataSet) <- subdataNames

secondDataSet$Activity[secondDataSet$Activity == "1"] <- "WALKING" 
secondDataSet$Activity[secondDataSet$Activity == "2"] <- "WALKING_UPSTAIRS" 
secondDataSet$Activity[secondDataSet$Activity == "3"] <- "WALKING_DOWNSTAIRS" 
secondDataSet$Activity[secondDataSet$Activity == "4"] <- "SITTING" 
secondDataSet$Activity[secondDataSet$Activity == "5"] <- "STANDING" 
secondDataSet$Activity[secondDataSet$Activity == "6"] <- "LAYING" 

write.table(secondDataSet, file="secondDataSet.txt", row.names = FALSE ) 