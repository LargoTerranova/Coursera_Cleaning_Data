# Code Book


## Raw Data
This is the raw data being used for the task. It can be found here:

[DataSource](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### These files contain the numerical data
* x_train.txt
* y_train.txt
* x_test.txt
* y_test.txt

### Each row contains data on one person. The number (1-30) indicates which person.
* subject_test.txt
* subject_train.txt

### The variable names contained in x/y test/rain data (above)
* features.txt

### Coded activity levels. Every number (1-6) indicates an activity (running, walking, ...)
* activity_labels.txt

There are six activities:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING


## Variable Names
The following convention is used:

* A `T` stands for time
* A `F` stands for Frequency
* A `X`,`Y`, `Z` is for the coordinate plane
* `MEAN` is for the statistical mean
* `STD` is for standard deviation  

"activity"              
"subject"   
"T_BodyAcc_MEAN_X"       
"T_BodyAcc_MEAN_Y"       
"T_BodyAcc_MEAN_Z"       
"T_BodyAcc_STD_X"        
"T_BodyAcc_STD_Y"        
"T_BodyAcc_STD_Z"        
"T_GravityAcc_MEAN_X"   
"T_GravityAcc_MEAN_Y"    
"T_GravityAcc_MEAN_Z"    
"T_GravityAcc_STD_X"     
"T_GravityAcc_STD_Y"     
"T_GravityAcc_STD_Z"     
"T_BodyAccJerk_MEAN_X"   
"T_BodyAccJerk_MEAN_Y"  
"T_BodyAccJerk_MEAN_Z"   
"T_BodyAccJerk_STD_X"    
"T_BodyAccJerk_STD_Y"    
"T_BodyAccJerk_STD_Z"    
"T_BodyGyro_MEAN_X"      
"T_BodyGyro_MEAN_Y"      
"T_BodyGyro_MEAN_Z"     
"T_BodyGyro_STD_X"       
"T_BodyGyro_STD_Y"       
"T_BodyGyro_STD_Z"       
"T_BodyGyroJerk_MEAN_X"  
"T_BodyGyroJerk_MEAN_Y"  
"T_BodyGyroJerk_MEAN_Z"  
"T_BodyGyroJerk_STD_X"  
"T_BodyGyroJerk_STD_Y"   
"T_BodyGyroJerk_STD_Z"   
"T_BodyAccMag_MEAN"      
"T_BodyAccMag_STD"      
"T_GravityAccMag_MEAN"   
"T_GravityAccMag_STD"    
"T_BodyAccJerkMag_MEAN"
"T_BodyAccJerkMag_STD"   
"T_BodyGyroMag_MEAN"     
"T_BodyGyroMag_STD"      
"T_BodyGyroJerkMag_MEAN"
"T_BodyGyroJerkMag_STD"  
"F_BodyAcc_MEAN_X"       
"F_BodyAcc_MEAN_Y"      
"F_BodyAcc_MEAN_Z"       
"F_BodyAcc_STD_X"        
"F_BodyAcc_STD_Y"        
"F_BodyAcc_STD_Z"        
"F_BodyAccJerk_MEAN_X"   
"F_BodyAccJerk_MEAN_Y"  
"F_BodyAccJerk_MEAN_Z"  
"F_BodyAccJerk_STD_X"    
"F_BodyAccJerk_STD_Y"    
"F_BodyAccJerk_STD_Z"    
"F_BodyGyro_MEAN_X"      
"F_BodyGyro_MEAN_Y"      
"F_BodyGyro_MEAN_Z"      
"F_BodyGyro_STD_X"      
"F_BodyGyro_STD_Y"       
"F_BodyGyro_STD_Z"       
"F_BodyAccMag_MEAN"      
"F_BodyAccMag_STD"       
"F_BodyAccJerkMag_MEAN"  
"F_BodyAccJerkMag_STD"   
"F_BodyGyroMag_MEAN"    
"F_BodyGyroMag_STD"      
"F_BodyGyroJerkMag_MEAN"
"F_BodyGyroJerkMag_STD"  



## Row Names

Each row represents one subject (1-30) performing one activity
