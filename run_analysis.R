#clearing the workspace
rm(list = ls)
#loading library
library(dplyr)
library(reshape2)
library(reshape2)
#reading features able
 features<-read.table("UCI HAR Dataset/features.txt")
 
#taking out features which have mean and std in it 
 
 f<-grep("mean|std",features[,2])
 features[,2]<-as.character(features[,2])
 features<-features[f,]
 features.name<-features[,2]
#making it readable
 features.name<-sub("-mean","MEAN",features.name)
 features.name<-sub("-std","StDev",features.name)
 features.name<-sub("[()]","",features.name)
 features.name<-sub(")","",features.name)
 #reading x_train,y_train and subject_train and combining them
 
Xtrain<-read.table("UCI HAR Dataset/train/X_train.txt")[f]
Ytrain<-read.table("UCI HAR Dataset/train/y_train.txt")
subtrain<-read.table("UCI HAR Dataset/train/subject_train.txt")
finaltrain<-cbind(subtrain,Ytrain,Xtrain)
#reading x_test,y_test and subject_test and combining them

Xtest<-read.table("UCI HAR Dataset/test/X_test.txt")[f]
Ytest<-read.table("UCI HAR Dataset/test/y_test.txt")
subtest<-read.table("UCI HAR Dataset/test/subject_test.txt")
finaltest<-cbind(subtest,Ytest,Xtest)
finaldata<-rbind(finaltrain,finaltest)
#assining coulm names 

colnames(finaldata)<-c("Subject","Activity",features.name)
#reading the activity tables
activitylebels<-read.table("UCI HAR Dataset/activity_labels.txt")
#making the two columns factor 
finaldata$Activity<-factor(finaldata$Activity,levels = activitylebels[,1],labels = activitylebels[,2])
finaldata$Subject<-as.factor(finaldata$Subject)
#melting the data according to subject ans activity
final_melted<-melt(finaldata,id=c("Subject","Activity"))
#recasting the data by taking mean of both veriable
final_mean<-dcast(final_melted,Subject+Activity~ variable,mean)

#creating readable coulmn names
 names(final_mean)<-gsub("^t", "time", names(final_mean))
 names(final_mean)<-gsub("^f", "frequency", names(final_mean))
 names(final_mean)<-gsub("Acc", "Accelerometer", names(final_mean))
 names(final_mean)<-gsub("Gyro", "Gyroscope", names(final_mean))
 names(final_mean)<-gsub("Mag", "Magnitude", names(final_mean))
 names(final_mean)<-gsub("BodyBody", "Body", names(final_mean))

#writing the data to tidy.txt file
write.table(final_mean,"tidy.txt",row.names = F,quote = F)


