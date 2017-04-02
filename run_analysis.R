# The data has been downloaded and unzipped in the working directory
# Assign a variable to WD

filesPath <- "C:\\Users\\Nishanth\\Desktop\\Learning R programing\\data\\UCI HAR Dataset"              
setwd(filesPath)    

## Task 1: Merges the training and the test sets to create one data set

# Read data from test folder
labels_test<- read.table("test/y_test.txt", col.names="label")
subject_test<- read.table("test/subject_test.txt", col.names="subject")
x_test <- read.table("test/X_test.txt")

# Read data from train folder
labels_train<- read.table("train/y_train.txt", col.names="label")
subject_train <- read.table("train/subject_train.txt", col.names="subject")
y_train <- read.table("train/X_train.txt")

# Merge the data
merged <- rbind(cbind(labels_test, subject_test,  x_test), cbind(labels_train, subject_train, y_train))

## Task 2: Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt")
features_mean_std <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]  

# Extracting only the needed data by taking the labels and subject also into account
merged_mean_std <- merged[, c(1, 2, features_mean_std$V1+2)] 

## Task 3: Uses descriptive activity names to name the activities in the data set

# Read the activity labels file
labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)

# Merge this labels with the main data
merged_mean_std$label <- labels[merged_mean_std$label, 2]

## Task 4: Appropriately labels the data set with descriptive variable names

# Assign the correct labels
des_lab <- c("subject", "label", features_mean_std$V2)
colnames(merged_mean_std) <- des_lab

## Task 5: From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.

# Calculate the mean based on different combinations
mean_merged <- aggregate(merged_mean_std[, 3:ncol(merged_mean_std)],by=list(subject = merged_mean_std$subject,label = merged_mean_std$label),mean)

# Finally, write the file
write.table(format(mean_merged),"finaldata.txt", quote=2, row.names=F, col.names=F)