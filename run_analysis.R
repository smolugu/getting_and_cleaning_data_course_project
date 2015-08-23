## read files to merge
##test files
xtext_test <- read.table("./test/X_test.txt",header = FALSE, sep = "", fill = TRUE)
ytext_test <- read.table("./test/y_test.txt",header = FALSE, sep = "", fill = TRUE)
ytext_test_subject <- read.table("./test/subject_test.txt",header = FALSE, sep = "", fill = TRUE)

##train files
xtext_train <- read.table("./train/X_train.txt",header = FALSE, sep = "", fill = TRUE)
ytext_train <- read.table("./train/y_train.txt",header = FALSE, sep = "", fill = TRUE)
ytext_train_subject <- read.table("./train/subject_train.txt",header = FALSE, sep = "", fill = TRUE)

##merging test files
xtext_test2 <- cbind(ytext_test_subject, ytext_test, xtext_test) ## 2947 rows, 563 cols
##merging train files
xtext_train2 <- cbind(ytext_train_subject, ytext_train, xtext_train) ## 7352 rows, 563 cols

## merging test and train data and writing to a csv file
xtext_all_data <- rbind(xtext_test2, xtext_train2)
write.csv(xtext_all_data, file = "xcsv_all_data.csv")

## extract measurements of mean and sd
feature_text <- read.table("features.txt", sep = "", header = FALSE, fill = TRUE)
feature_text$V2 <- as.character(feature_text$V2)

        ##naming the columns of the merged data
names(xtext_all_data) <- c("subject-id", "activity-id",feature_text$V2)

        ##creating a subset of mean and SD's by matcing phrases (mean() and sd()) in column names
xtext_mean_std <- xtext_all_data[, grepl("mean()", colnames(xtext_all_data), fixed = TRUE) | grepl("std()", colnames(xtext_all_data), fixed = TRUE)]

        ## readding the subject_id and activity_id columns
xtext_mean_std <- cbind(xtext_all_data[,1], xtext_all_data[,2], xtext_mean_std)

        ## making column names valid as per R convention
names(xtext_mean_std) <- make.names(names(xtext_mean_std), unique = TRUE, allow_ = TRUE)

        ## renaming 1st and 2nd columns with subject.id and activity.id respectively
xtext_mean_std <- rename(xtext_mean_std, subject.id = xtext_all_data...1., activity.id = xtext_all_data...2.)


## name activities in data set using descriptive activity names
activity_names <- read.table("./activity_labels.txt",header = FALSE, sep = "", fill = TRUE)
xtext_mean_std <- mutate(xtext_mean_std, activity-id = activity_names[activity-id,2])

## renaming activity.id to activity.name as id's are replaced by names
xtext_mean_std <- rename(xtext_mean_std, activity.name = activity.id)


## create a second subset
        ## grouping xtext_mean_data by subject.id and activity.name
by_subject_activity <- group_by(xtext_mean_std, subject.id, activity.name)

        ## use summarise_each to calculate the means across all the columns
final_data_subset <- by_subject_activity %>% summarise_each(funs(mean))

##write the above data_subset to a text file
write.table(final_data_subset, file = "course_final_subset.txt", row.names = FALSE)
