##Reading the data----
library(dplyr)

setwd("./data")

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features_labels <- read.table("UCI HAR Dataset/features.txt")

##Test Dataset
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_set <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")

names(test_set) <- features_labels$V2
test_data <- cbind(test_labels, test_set)
test_data <- merge(activity_labels, test_data,by = "V1") #3. Uses descriptive activity names to name the activities in the data set
test_data <- cbind(test_subject, test_data)
names(test_data)[c(1,2,3)] <- c("SubjectId","ActivityCode","ActivityLabel") 

rm("test_set","test_subject","test_labels")

##Train DataSet

train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_set <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")

names(train_set) <- features_labels$V2
train_data <- cbind(train_labels, train_set)
train_data <- merge(activity_labels, train_data,by = "V1") # 3. Uses descriptive activity names to name the activities in the data set
train_data <- cbind(train_subject, train_data)
names(train_data)[c(1,2,3)] <- c("SubjectId","ActivityCode","ActivityLabel") 

rm("train_set","train_subject","train_labels")
rm("activity_labels", "features_labels")

## 1. Merging the train and test datasets----

activity_data <- rbind(test_data, train_data)
activity_data <- activity_data[order(activity_data$SubjectId, activity_data$ActivityCode),]
rm("test_data","train_data")

## 2. e 3. Selecting variables -----
activity_data <- activity_data[,c(1:3,grep("mean\\(\\)|std\\(\\)", names(activity_data)))]
activity_data <- activity_data[,-2]

## 4. Changing the label for the features variables (variable names)----

names <- names(activity_data)
names <- gsub("^t", "Time", names)
names <- gsub("^f", "Freq", names)
names <- gsub("BodyBody", "Body", names)
names <- gsub("\\(\\)", "", names)
names(activity_data) <- names

## 5. Create another independent tidy data set with the average of each variable for each activity and each subject ---- 
##using dplyr

mean_activity_data <- activity_data %>%
        group_by(SubjectId, ActivityLabel) %>%
        summarize_all(funs(mean))

###Writing the tidy dataset output----

write.table(mean_activity_data, file = "tidy_UCI_HAR_Dataset.txt", row.names = FALSE)

