X_train <- read.table("UCI HAR Dataset/train/X_train.txt")      #Reading Training Data
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
Sub_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")         #Reading Test Data
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
Sub_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

variable_names <- read.table("UCI HAR Dataset/features.txt")      #Reading Data Description

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")    #Readin Activity Labels

X_total <- rbind(X_train, X_test)     #Merging Training & Test Data sets
Y_total <- rbind (Y_train, Y_test)
Sub_total <- rbind (Sub_train, Sub_test)

selected_var <- variable_names[grep("mean\\(\\)|std\\(\\)",variable_names[,2]),]  #Getting only means and standard deviations
X_total <- X_total[ , selected_var[,1]]

colnames(Y_total) <- "Activity"               #Properly naming the activities in the dataset
Y_total$activitylabel <- factor(Y_total$Activity, labels = as.character(activity_labels[,2]))
activitylabel <- Y_total[ ,-1]

colnames(X_total) <- variable_names[selected_var[,1],2]   #Using Descriptive Variable Names

colnames(Sub_total) <- "subject"      #Using the above data set, creating a new, tidy data set with the average of each variable for each activity and each subject
total<- cbind(X_total, activitylabel, Sub_total)
total_mean <- total %>% group_by(activitylabel, subject) %>% summarize_each(funs(mean))
write.table(total_mean, "tidydata.txt", row.names = FALSE, col.names = TRUE)
