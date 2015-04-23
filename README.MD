=========================================
run_analysis.R

Jason Frakes
=========================================

This project takes data from the Human Activity Recognition Using Smartphones 
Dataset, Version 1.0, tidies up the data into one data set, then gives the mean
of 79 independent variables grouped by activity.


=========================================
The Files
=========================================

run_analysis.R - The R script that tidies up the data and then writes the 
		avgs.txt file that has the mean of each of the 79 variables grouped
		by activity.
		
activity_labels.txt - Data dictionary that cross references activity IDs with
		their description.  Used by the R script as lookups for activity IDs
		
avgs.txt - What the R script produces.  Has the meanof each of the 79 variables 
		grouped by activity
		
CodeBook.MD - The code book that describes the data used in this script as well
		as describing all data transformations that take place
		
features.txt - Data dictionary for the that cross references variable IDs with
		their description.  Used to create well named variables for the data sets
		
README.MD - This file

x_test.txt - Test data from the Human Activity Recognition Using Smartphones 
		Dataset, used by the R script to generate avgs.txt

x_train.txt - Training data from the Human Activity Recognition Using Smartphones 
		Dataset, used by the R script to generate avgs.txt
		
y_test.txt - Test activity IDs that are cbinded to the test data, joined to the 
		activity_labels data to create easily understood activities in the data.
		Data comes from the Human Activity Recognition Using Smartphones 
		Dataset

y_train.txt - Train activity IDs that are cbinded to the train data, joined to the 
		activity_labels data to create easily understood activities in the data.
		Data comes from the Human Activity Recognition Using Smartphones 
		Dataset