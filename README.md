# GCDCourseProject
Getting and Cleaning Data - Course Project

With the script in run_analysis.R the data collected from the accelerometers from the Samsung Galaxy S smartphone can be downloaded to your working directory. Then, you must unzip the data in your working directory. Their internal directories are acessed by the code for each file that is read.

In order to make it easier for data analysis the name of the variables for each measurement was changed to "measureX.type", where "X" represents a index for one of the measurements and "type" the type of a descriptive estimative from the measurement (mean or standard deviation).

Measure	New.Name	Original
1	measure1.mean	tBodyAcc-mean()-X
1	measure1.std	tBodyAcc-std()-X
2	measure2.mean	tBodyAcc-mean()-Y
2	measure2.std	tBodyAcc-std()-Y
3	measure3.mean	tBodyAcc-mean()-Z
3	measure3.std	tBodyAcc-std()-Z
4	measure4.mean	tGravityAcc-mean()-X
4	measure4.std	tGravityAcc-std()-X
5	measure5.mean	tGravityAcc-mean()-Y
5	measure5.std	tGravityAcc-std()-Y
6	measure6.mean	tGravityAcc-mean()-Z
6	measure6.std	tGravityAcc-std()-Z
7	measure7.mean	tBodyAccJerk-mean()-X
7	measure7.std	tBodyAccJerk-std()-X
8	measure8.mean	tBodyAccJerk-mean()-Y
8	measure8.std	tBodyAccJerk-std()-Y
9	measure9.mean	tBodyAccJerk-mean()-Z
9	measure9.std	tBodyAccJerk-std()-Z
10	measure10.mean	tBodyGyro-mean()-X
10	measure10.std	tBodyGyro-std()-X
11	measure11.mean	tBodyGyro-mean()-Y
11	measure11.std	tBodyGyro-std()-Y
12	measure12.mean	tBodyGyro-mean()-Z
12	measure12.std	tBodyGyro-std()-Z
13	measure13.mean	tBodyGyroJerk-mean()-X
13	measure13.std	tBodyGyroJerk-std()-X
14	measure14.mean	tBodyGyroJerk-mean()-Y
14	measure14.std	tBodyGyroJerk-std()-Y
15	measure15.mean	tBodyGyroJerk-mean()-Z
15	measure15.std	tBodyGyroJerk-std()-Z
16	measure16.mean	tBodyAccMag-mean()
16	measure16.std	tBodyAccMag-std()
17	measure17.mean	tGravityAccMag-mean()
17	measure17.std	tGravityAccMag-std()
18	measure18.mean	tBodyAccJerkMag-mean()
18	measure18.std	tBodyAccJerkMag-std()
19	measure19.mean	tBodyGyroMag-mean()
19	measure19.std	tBodyGyroMag-std()
20	measure20.mean	tBodyGyroJerkMag-mean()
20	measure20.std	tBodyGyroJerkMag-std()
21	measure21.mean	fBodyAcc-mean()-X
21	measure21.std	fBodyAcc-std()-X
22	measure22.mean	fBodyAcc-mean()-Y
22	measure22.std	fBodyAcc-std()-Y
23	measure23.mean	fBodyAcc-mean()-Z
23	measure23.std	fBodyAcc-std()-Z
24	measure24.mean	fBodyAccJerk-mean()-X
24	measure24.std	fBodyAccJerk-std()-X
25	measure25.mean	fBodyAccJerk-mean()-Y
25	measure25.std	fBodyAccJerk-std()-Y
26	measure26.mean	fBodyAccJerk-mean()-Z
26	measure26.std	fBodyAccJerk-std()-Z
27	measure27.mean	fBodyGyro-mean()-X
27	measure27.std	fBodyGyro-std()-X
28	measure28.mean	fBodyGyro-mean()-Y
28	measure28.std	fBodyGyro-std()-Y
29	measure29.mean	fBodyGyro-mean()-Z
29	measure29.std	fBodyGyro-std()-Z
30	measure30.mean	fBodyAccMag-mean()
30	measure30.std	fBodyAccMag-std()
31	measure31.mean	fBodyBodyAccJerkMag-mean()
31	measure31.std	fBodyBodyAccJerkMag-std()
32	measure32.mean	fBodyBodyGyroMag-mean()
32	measure32.std	fBodyBodyGyroMag-std()
33	measure33.mean	fBodyBodyGyroJerkMag-mean()
33	measure33.std	fBodyBodyGyroJerkMag-std()
