#######################################
#Working Directory#####################
#######################################
setwd("C:/Users/boband/Google Drive/DataScience/3_Cleaning_data/Assignement/wd/")




#######################################
#Read in Data##########################
#######################################
#Variable Names
features        <- read.table("features.txt")

#Physical Activities
activitiez      <- read.table("activity_labels.txt")

#Test Data
subject_test <- read.table("subject_test.txt")
X_test       <- read.table("X_test.txt")
Y_test       <- read.table("y_test.txt")

#Train Data
subject_train <- read.table("subject_train.txt")
X_train       <- read.table("X_train.txt")
Y_train       <- read.table("y_train.txt")




#######################################
#Merge Raw Data
#######################################
#This Section merges the raw TEST and TRAIN data

#Combine X
X_DATA <- rbind(X_train, X_test)

#Combine y
Y_DATA <- rbind(Y_train, Y_test)

#Combine subject train
SUBJECT <- rbind(subject_train, subject_test)




######################################
#Subsetting
######################################
#Grep searches for the Variables containing "mean" and "std" and save their position into SELECTED_FEATURES
SELECTED_FEATURES <- grep("-(mean|std)\\(\\)", features[, 2])

#This creates the subsetted frame with the variables we want. Note that SELECTED_FEATURES is in the square 
#brackets after the comma, column position, so we only fetch the columns we selected in the previous step
X_DATA <- X_DATA[, SELECTED_FEATURES]

#Checking if we did everything right
X_DATA[1:10,1:5]
str(X_DATA)




######################################
#Naming
######################################
#We rename the dataframe X_DATA using names()
#We select the variables from the vector features
#SELECTED_FEATURES is a vector of numbers containing the position of all variables we need, 
#The 2 after the comma means we want column two from features, which are the names of the variables

names(X_DATA) <- features[SELECTED_FEATURES, 2]




######################################
#Matching numbers and Activity
######################################
#Y_DATA contains the physical activities each of the 30 subjects were performing
#activitiez are the names of the activities
#You want to give every number in Y_DATA his coresponding name from activitiez
Y_DATA[,1] <- activitiez[Y_DATA[,1], 2]

#Assign a proper column name
names(Y_DATA) <- "activity"

#Alternative Code which should do the same
#train_test_frame$activity <- factor(train_test_frame$activity, levels = activity_labels[,1], labels = activity_labels[,2])




######################################
#Label with descriptive variable names
######################################
#Assign a good column name
SUBJECT
names(SUBJECT) <- "subject"




#######################################
#Merge all Data
#######################################
#MErg the X and Y dAta and the subjects
MERGED <- cbind(X_DATA, Y_DATA, SUBJECT)

#Check if everything looks right
#You should see five columns and ten rows and evey column should have "mean" or "std" in it
MERGED[1:10,1:5]




#######################################
#Create Tidy variable names
#######################################
#There are strings in the variable names which make the variables unpractical like "()" and "-
#Also there are abreviation like "t" for time, which might be confusing
#This step corrects theese shortcommings. First check out the initial state
MERGED[1:10, 1:5]

#Correct Variable names
names(MERGED) <- gsub("^f", "F_", names(MERGED))
names(MERGED) <- gsub("^t", "T_", names(MERGED))
names(MERGED) <- gsub("mean", "_MEAN", names(MERGED))
names(MERGED) <- gsub("std", "_STD", names(MERGED))
names(MERGED) <- gsub("BodyBody", "Body", names(MERGED))
names(MERGED) <- gsub("\\(.*\\)", "", names(MERGED))
names(MERGED) <- gsub("-", "", names(MERGED))

names(MERGED) <- gsub("X$", "_X", names(MERGED))
names(MERGED) <- gsub("Y$", "_Y", names(MERGED))
names(MERGED) <- gsub("Z$", "_Z", names(MERGED))

#Check out how cool the variables now look :)
MERGED[1:10, 1:5]




#######################################
#Create Averages 
#######################################
library(plyr)
AVERAGE <- ddply(MERGED, .(subject, activity), function(x) colMeans(x[,1:66]))

#Check out the result
AVERAGE[1:10,1:5]
str(AVERAGE)




#######################################
#Write Table
#######################################
write.table(AVERAGE, "AVERAGE.txt")


#Reload to inspect if everything was saved correctly
FINAL <- read.table("AVERAGE.txt")
str(FINAL)
FINAL[1:10,1:5]





#END OF CODE
#######################################