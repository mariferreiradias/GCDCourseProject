#Download the data and saving the date
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
setInternet2(use = TRUE)
download.file(fileUrl,destfile="./Dataset.zip",method="internal")

dateDownloaded<-date()

###############################################################################
########################### READING TRAIN DATA ################################

#FIRST: THE SUBJECT
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
head(subject_train); tail(subject_train); table(subject_train)
colnames(subject_train)<-"subjectID"

#SECOND: THE ACTIVITY
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
head(y_train); tail(y_train); table(y_train)
colnames(y_train)<-"Activity"

#COMBINING SUBJECT AND ACTIVITY DATA SETS INTO TRAIN
train<-cbind(subject_train,y_train)
head(train); tail(train); table(train)

#THIRD: THE MEASURES
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
head(X_train); tail(X_train);

#conecting the measures to original variable names
features<-read.table("./UCI HAR Dataset/features.txt")
head(features)

colnames(X_train)<-features$V2
names(X_train)

#COMBINING SUBJECT, ACTIVITY AND MEASURES DATA SETS INTO TRAIN1
train1<-cbind(train,X_train)
str(train1)

###############################################################################
########################### READING TRAIN DATA ################################

#FIRST: THE SUBJECT
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
head(subject_test); tail(subject_test); table(subject_test)
colnames(subject_test)<-"subjectID"

#SECOND: THE ACTIVITY
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
head(y_test); tail(y_test); table(y_test)
colnames(y_test)<-"Activity"

#COMBINING SUBJECT AND ACTIVITY DATA SETS INTO TEST
test<-cbind(subject_test,y_test)
head(test); tail(test); table(test)

#THIRD: THE MEASURES
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
head(X_test); tail(X_test);

#conecting the measures to original variable names
colnames(X_test)<-features$V2
names(X_test)

#COMBINING SUBJECT, ACTIVITY AND MEASURES DATA SETS INTO TEST1
test1<-cbind(test,X_test)
str(test1)

###############################################################################
######################## COMBINING TRAIN AND TEST #############################

AllData<-rbind(train1,test1)
str(AllData)
table(AllData$subjectID)
table(AllData$Activity)

#Extracting only the measuremenst mean and std deviation
DescData<-AllData[,c("subjectID","Activity",
        "tBodyAcc-mean()-X","tBodyAcc-mean()-Y","tBodyAcc-mean()-Z",
        "tBodyAcc-std()-X","tBodyAcc-std()-Y","tBodyAcc-std()-Z",
        "tGravityAcc-mean()-X","tGravityAcc-mean()-Y","tGravityAcc-mean()-Z",
        "tGravityAcc-std()-X","tGravityAcc-std()-Y","tGravityAcc-std()-Z",
        "tBodyAccJerk-mean()-X","tBodyAccJerk-mean()-Y","tBodyAccJerk-mean()-Z",
        "tBodyAccJerk-std()-X","tBodyAccJerk-std()-Y","tBodyAccJerk-std()-Z",
        "tBodyGyro-mean()-X","tBodyGyro-mean()-Y","tBodyGyro-mean()-Z",
        "tBodyGyro-std()-X","tBodyGyro-std()-Y","tBodyGyro-std()-Z",
        "tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y","tBodyGyroJerk-mean()-Z",
        "tBodyGyroJerk-std()-X","tBodyGyroJerk-std()-Y","tBodyGyroJerk-std()-Z",
        "tBodyAccMag-mean()","tBodyAccMag-std()","tGravityAccMag-mean()",
        "tGravityAccMag-std()","tBodyAccJerkMag-mean()","tBodyAccJerkMag-std()",
        "tBodyGyroMag-mean()","tBodyGyroMag-std()","tBodyGyroJerkMag-mean()",
        "tBodyGyroJerkMag-std()",
        "fBodyAcc-mean()-X","fBodyAcc-mean()-Y","fBodyAcc-mean()-Z",
        "fBodyAcc-std()-X","fBodyAcc-std()-Y","fBodyAcc-std()-Z",
        "fBodyAccJerk-mean()-X","fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z",
        "fBodyAccJerk-std()-X","fBodyAccJerk-std()-Y","fBodyAccJerk-std()-Z",
        "fBodyGyro-mean()-X","fBodyGyro-mean()-Y","fBodyGyro-mean()-Z",
        "fBodyGyro-std()-X","fBodyGyro-std()-Y","fBodyGyro-std()-Z",
        "fBodyAccMag-mean()","fBodyAccMag-std()","fBodyBodyAccJerkMag-mean()",
        "fBodyBodyAccJerkMag-std()","fBodyBodyGyroMag-mean()",
        "fBodyBodyGyroMag-std()","fBodyBodyGyroJerkMag-mean()",
        "fBodyBodyGyroJerkMag-std()")]

head(DescData)
str(DescData)

#Describing the activities names
DescData[DescData$Activity==1,2]<-"WALKING"
DescData[DescData$Activity==2,2]<-"WALKING_UPSTAIRS"
DescData[DescData$Activity==3,2]<-"WALKING_DOWNSTAIRS"
DescData[DescData$Activity==4,2]<-"SITTING"
DescData[DescData$Activity==5,2]<-"STANDING"
DescData[DescData$Activity==6,2]<-"LAYING"

table(DescData$Activity)

#Creating appropriately labels for measure variables
colnames(DescData)<-c("subjectID","Activity","measure1.mean","measure2.mean",
                     "measure3.mean","measure1.std","measure2.std",
                     "measure3.std","measure4.mean","measure5.mean",
                     "measure6.mean","measure4.std","measure5.std",
                     "measure6.std","measure7.mean","measure8.mean",
                     "measure9.mean","measure7.std","measure8.std",
                     "measure9.std","measure10.mean","measure11.mean",
                     "measure12.mean","measure10.std","measure11.std",
                     "measure12.std","measure13.mean","measure14.mean",
                     "measure15.mean","measure13.std","measure14.std",
                     "measure15.std","measure16.mean","measure16.std",
                     "measure17.mean","measure17.std","measure18.mean",
                     "measure18.std","measure19.mean","measure19.std",
                     "measure20.mean","measure20.std","measure21.mean",
                     "measure22.mean","measure23.mean","measure21.std",
                     "measure22.std","measure23.std","measure24.mean",
                     "measure25.mean","measure26.mean","measure24.std",
                     "measure25.std","measure26.std","measure27.mean",
                     "measure28.mean","measure29.mean","measure27.std",
                     "measure28.std","measure29.std","measure30.mean",
                     "measure30.std","measure31.mean","measure31.std",
                     "measure32.mean","measure32.std","measure33.mean",
                     "measure33.std")

str(DescData)

#Summarise data by subject and activity
by_groups<-group_by(DescData,subjectID,Activity)
SummariseData<-summarise_each(by_groups,funs(mean))

#Saving the data set SummariseData
write.table(SummariseData,file="SummariseData.txt",row.names=FALSE)
