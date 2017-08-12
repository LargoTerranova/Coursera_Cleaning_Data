
# Getting and Cleaning Data Course Project

This is my repository for the Coursera course: "Getting and Cleaning Data". This repository contains the following files:

* `README.md`       Is a short description of the Project.
* `run_analysis.R`  Is an R script that will perform the merger and calculations statet in the description.
* `AVERAGES.txt`    is the result of the calculations and the final result.



# Run Analysis

The script `run_analysis.R` follows the exact same steps laid out in the Coursera Assignement

* Read in Data:
Read in the Data Coursera provided

* Merge Raw Data:
Merges the TRAIN and TEST data

* Subsetting:
Picks the variables `mean` and `std` from the master dataset

* Naming Variables:
Takes the `Features` vector and combines it with the raw data

* Matching Numbers and activities:
Assigns an activity (running, walking, ...) to each row

* Labels with descriptive variable names:
Again naming a column

* Merge all Data:
This merges the X_Data, the Y_Data and the Subject

* Create Tidy variable names:
Removes characters like `()` and `-` from the dataset, making it tidy

* Calculate AVERAGES:
This calculates the averages over the entire dataset

* Write Table:
Saves the result



# Averages
This is the final result.
