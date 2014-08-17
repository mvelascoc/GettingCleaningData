---
title: "CodeBook.md"
author: "Maria Velasco"
date: "16 de agosto de 2014"
output: html_document
---

This file explains data included in the tidy data file for **Getting and Cleaning Data Coursera for August 2014 Class Project** by mvelasco.

Requiremen from the project can be found on (https://class.coursera.org/getdata-006/human_grading/view/courses/972584/assessments/3/submissions

The initial processing to create one set of data was to create data sets with subject, activity and the 561 collection of data for traing and test data sets.
Then the two data sets where pasted verticaly, with train data first and then testing. The result is a data frame with 10299 observations and 563 variables.
(file run_analysis.R from lines 5 to 14)

Then, for just keeping the mean and standard deviations, the columns are selected by checking in the data specification. Selected columns are:
    		
- ID	1	, original label :	tBodyAcc-mean()-X
- ID	2	, original label :	tBodyAcc-mean()-Y
- ID	3	, original label :	tBodyAcc-mean()-Z
- ID	4	, original label :	tBodyAcc-std()-X
- ID	5	, original label :	tBodyAcc-std()-Y
- ID	6	, original label :	tBodyAcc-std()-Z
- ID	41	, original label :	tGravityAcc-mean()-X
- ID	42	, original label :	tGravityAcc-mean()-Y
- ID	43	, original label :	tGravityAcc-mean()-Z
- ID	44	, original label :	tGravityAcc-std()-X
- ID	45	, original label :	tGravityAcc-std()-Y
- ID	46	, original label :	tGravityAcc-std()-Z
- ID	81	, original label :	tBodyAccJerk-mean()-X
- ID	82	, original label :	tBodyAccJerk-mean()-Y
- ID	83	, original label :	tBodyAccJerk-mean()-Z
- ID	84	, original label :	tBodyAccJerk-std()-X
- ID	85	, original label :	tBodyAccJerk-std()-Y
- ID	86	, original label :	tBodyAccJerk-std()-Z
- ID	121	, original label :	tBodyGyro-mean()-X
- ID	122	, original label :	tBodyGyro-mean()-Y
- ID	123	, original label :	tBodyGyro-mean()-Z
- ID	124	, original label :	tBodyGyro-std()-X
- ID	125	, original label :	tBodyGyro-std()-Y
- ID	126	, original label :	tBodyGyro-std()-Z
- ID	161	, original label :	tBodyGyroJerk-mean()-X
- ID	162	, original label :	tBodyGyroJerk-mean()-Y
- ID	163	, original label :	tBodyGyroJerk-mean()-Z
- ID	164	, original label :	tBodyGyroJerk-std()-X
- ID	165	, original label :	tBodyGyroJerk-std()-Y
- ID	166	, original label :	tBodyGyroJerk-std()-Z
- ID	201	, original label :	tBodyAccMag-mean()
- ID	202	, original label :	tBodyAccMag-std()
- ID	214	, original label :	tGravityAccMag-mean()
- ID	215	, original label :	tGravityAccMag-std()
- ID	227	, original label :	tBodyAccJerkMag-mean()
- ID	228	, original label :	tBodyAccJerkMag-std()
- ID	240	, original label :	tBodyGyroMag-mean()
- ID	241	, original label :	tBodyGyroMag-std()
- ID	253	, original label :	tBodyGyroJerkMag-mean()
- ID	254	, original label :	tBodyGyroJerkMag-std()
- ID	266	, original label :	fBodyAcc-mean()-X
- ID	267	, original label :	fBodyAcc-mean()-Y
- ID	268	, original label :	fBodyAcc-mean()-Z
- ID	269	, original label :	fBodyAcc-std()-X
- ID	270	, original label :	fBodyAcc-std()-Y
- ID	271	, original label :	fBodyAcc-std()-Z
- ID	345	, original label :	fBodyAccJerk-mean()-X
- ID	346	, original label :	fBodyAccJerk-mean()-Y
- ID	347	, original label :	fBodyAccJerk-mean()-Z
- ID	348	, original label :	fBodyAccJerk-std()-X
- ID	349	, original label :	fBodyAccJerk-std()-Y
- ID	350	, original label :	fBodyAccJerk-std()-Z
- ID	424	, original label :	fBodyGyro-mean()-X
- ID	425	, original label :	fBodyGyro-mean()-Y
- ID	426	, original label :	fBodyGyro-mean()-Z
- ID	427	, original label :	fBodyGyro-std()-X
- ID	428	, original label :	fBodyGyro-std()-Y
- ID	429	, original label :	fBodyGyro-std()-Z
- ID	503	, original label :	fBodyAccMag-mean()
- ID	504	, original label :	fBodyAccMag-std()
- ID	516	, original label :	fBodyBodyAccJerkMag-mean()
- ID	517	, original label :	fBodyBodyAccJerkMag-std()
- ID	529	, original label :	fBodyBodyGyroMag-mean()
- ID	530	, original label :	fBodyBodyGyroMag-std()
- ID	542	, original label :	fBodyBodyGyroJerkMag-mean()
- ID	543	, original label :	fBodyBodyGyroJerkMag-std()

Vectors for the names are created and used as column labels.

Information on activity_labels.txt is used to change the numeric values to labels.

Second data sat is made using only this selected columns, and contains the mean of each of the variables, grouped by Subject and Activity. The detailed columns are described above:

-    Column name	:	Description		
-	Subject	: 	Subject. Represented by a n integer, 1 to 30		
-	Activity	: 	One of the 6 activities the subjects perfomed when the data was collected		
-	tBodyAcc-mean()-X	: 	Mean of the variable with ID	1	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAcc-mean()-Y	: 	Mean of the variable with ID	2	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAcc-mean()-Z	: 	Mean of the variable with ID	3	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAcc-std()-X	: 	Mean of the variable with ID	4	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAcc-std()-Y	: 	Mean of the variable with ID	5	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAcc-std()-Z	: 	Mean of the variable with ID	6	in the original data, corresponding to the subset of the subject and activity in the register
-	tGravityAcc-mean()-X	: 	Mean of the variable with ID	41	in the original data, corresponding to the subset of the subject and activity in the register
-	tGravityAcc-mean()-Y	: 	Mean of the variable with ID	42	in the original data, corresponding to the subset of the subject and activity in the register
-	tGravityAcc-mean()-Z	: 	Mean of the variable with ID	43	in the original data, corresponding to the subset of the subject and activity in the register
-	tGravityAcc-std()-X	: 	Mean of the variable with ID	44	in the original data, corresponding to the subset of the subject and activity in the register
-	tGravityAcc-std()-Y	: 	Mean of the variable with ID	45	in the original data, corresponding to the subset of the subject and activity in the register
-	tGravityAcc-std()-Z	: 	Mean of the variable with ID	46	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccJerk-mean()-X	: 	Mean of the variable with ID	81	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccJerk-mean()-Y	: 	Mean of the variable with ID	82	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccJerk-mean()-Z	: 	Mean of the variable with ID	83	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccJerk-std()-X	: 	Mean of the variable with ID	84	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccJerk-std()-Y	: 	Mean of the variable with ID	85	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccJerk-std()-Z	: 	Mean of the variable with ID	86	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyro-mean()-X	: 	Mean of the variable with ID	121	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyro-mean()-Y	: 	Mean of the variable with ID	122	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyro-mean()-Z	: 	Mean of the variable with ID	123	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyro-std()-X	: 	Mean of the variable with ID	124	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyro-std()-Y	: 	Mean of the variable with ID	125	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyro-std()-Z	: 	Mean of the variable with ID	126	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroJerk-mean()-X	: 	Mean of the variable with ID	161	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroJerk-mean()-Y	: 	Mean of the variable with ID	162	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroJerk-mean()-Z	: 	Mean of the variable with ID	163	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroJerk-std()-X	: 	Mean of the variable with ID	164	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroJerk-std()-Y	: 	Mean of the variable with ID	165	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroJerk-std()-Z	: 	Mean of the variable with ID	166	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccMag-mean()	: 	Mean of the variable with ID	201	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccMag-std()	: 	Mean of the variable with ID	202	in the original data, corresponding to the subset of the subject and activity in the register
-	tGravityAccMag-mean()	: 	Mean of the variable with ID	214	in the original data, corresponding to the subset of the subject and activity in the register
-	tGravityAccMag-std()	: 	Mean of the variable with ID	215	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccJerkMag-mean()	: 	Mean of the variable with ID	227	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyAccJerkMag-std()	: 	Mean of the variable with ID	228	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroMag-mean()	: 	Mean of the variable with ID	240	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroMag-std()	: 	Mean of the variable with ID	241	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroJerkMag-mean()	: 	Mean of the variable with ID	253	in the original data, corresponding to the subset of the subject and activity in the register
-	tBodyGyroJerkMag-std()	: 	Mean of the variable with ID	254	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAcc-mean()-X	: 	Mean of the variable with ID	266	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAcc-mean()-Y	: 	Mean of the variable with ID	267	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAcc-mean()-Z	: 	Mean of the variable with ID	268	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAcc-std()-X	: 	Mean of the variable with ID	269	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAcc-std()-Y	: 	Mean of the variable with ID	270	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAcc-std()-Z	: 	Mean of the variable with ID	271	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAccJerk-mean()-X	: 	Mean of the variable with ID	345	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAccJerk-mean()-Y	: 	Mean of the variable with ID	346	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAccJerk-mean()-Z	: 	Mean of the variable with ID	347	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAccJerk-std()-X	: 	Mean of the variable with ID	348	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAccJerk-std()-Y	: 	Mean of the variable with ID	349	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAccJerk-std()-Z	: 	Mean of the variable with ID	350	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyGyro-mean()-X	: 	Mean of the variable with ID	424	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyGyro-mean()-Y	: 	Mean of the variable with ID	425	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyGyro-mean()-Z	: 	Mean of the variable with ID	426	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyGyro-std()-X	: 	Mean of the variable with ID	427	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyGyro-std()-Y	: 	Mean of the variable with ID	428	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyGyro-std()-Z	: 	Mean of the variable with ID	429	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAccMag-mean()	: 	Mean of the variable with ID	503	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyAccMag-std()	: 	Mean of the variable with ID	504	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyBodyAccJerkMag-mean()	: 	Mean of the variable with ID	516	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyBodyAccJerkMag-std()	: 	Mean of the variable with ID	517	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyBodyGyroMag-mean()	: 	Mean of the variable with ID	529	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyBodyGyroMag-std()	: 	Mean of the variable with ID	530	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyBodyGyroJerkMag-mean()	: 	Mean of the variable with ID	542	in the original data, corresponding to the subset of the subject and activity in the register
-	fBodyBodyGyroJerkMag-std()	: 	Mean of the variable with ID	543	in the original data, corresponding to the subset of the subject and activity in the register

