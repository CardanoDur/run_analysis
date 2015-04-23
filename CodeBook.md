=========================================
CodeBook.md - avgs.txt
=========================================

=========================================
The Data
=========================================
avgs.txt contains six rows of data that has the 
mean of 79 variables (listed below) grouped by 
six activities (also listed below).


=========================================
Data Transformation
=========================================
Here's how the data is manipulated to create a tidy data set in 
order to generate the means:

1) Data dictionaries features.txt and activity_lables.txt are loaded into memory
and given colNames ("id","measure") & ("id","activity")

2) The test and training complete data sets (x_test.txt & x_train.txt) are both 
brought into memory

3) Variables for these two datasets are set from the data dictionary for features
(step 1) and then filtered to only include variables that are means or 
standard deviations

4) The indexes of the filtered variables is used to reduce each data sets 79
independent variables and then the column names are renamed to the variable
names from step 2

5) The activites for each data set (y_test.txt & y_train.txt) is brought
into memory, given a colname of "id" and then cbind to each data set

6) The "id" variable in each data set is joined to the activity data
dictionary from step 1.  This gives each observation an easily recognized
activity.  This activity column is moved to the front of the column list
and then the "id" column is removed to remove any confusion

AT THIS POINT THE DATA IS TIDY.  EACH INDEPENDENT TRIAL HAS IT'S OWN ROW,
WITH 79 INDEPENDENT VARIABLES DESCRIBING EACH OBSERVATION.  THE VARIABLE NAMES AS
WELL AS ACTIVITIES ARE EASILY READ.

7) The two datasets are combined with rbind

8) The mean of each column is taken after the complete data set is grouped by 
"activity" and is then written to the avgs.txt file.

=========================================
Variables
=========================================
activity	chr
		Describes the activity undertaken when measurement taken
		VALUES:
			WALKING,
			WALKING_UPSTAIRS,
			WALKING_DOWNSTAIRS,
			SITTING,
			STANDING,
			LAYING
			
tBodyAcc-mean()-X	num
		mean of Body Acc on the X axis
		
tBodyAcc-mean()-Y	num
		mean of Body Acc on the Y axis
		
tBodyAcc-mean()-Z	num
		mean of Body Acc on the Z axis
		
tBodyAcc-std()-X	num
		std dev of Body Acc on the X axis
		
tBodyAcc-std()-Y	num
		std dev of Body Acc on the Y axis

tBodyAcc-std()-Z	num
		std dev of Body Acc on the Z axis

tGravityAcc-mean()-X	num
		mean of Gravity Acc on the X axis

tGravityAcc-mean()-Y	num
		mean of Gravity Acc on the Y axis

tGravityAcc-mean()-Z	num
		mean of Gravity Acc on the Z axis

tGravityAcc-std()-X		num
		std dev of Gravity Acc on the X axis

tGravityAcc-std()-Y		num
		std dev of Gravity Acc on the Y axis

tGravityAcc-std()-Z		num
		std dev of Gravity Acc on the Z axis

tBodyAccJerk-mean()-X	num
		mean of Body Acc Jerk on the X axis

tBodyAccJerk-mean()-Y	num
		mean of Body Acc Jerk on the Y axis

tBodyAccJerk-mean()-Z	num
		mean of Body Acc Jerk on the Z axis

tBodyAccJerk-std()-X	num
		std dev of Body Acc Jerk on the X axis

tBodyAccJerk-std()-Y	num
		std dev of Body Acc Jerk on the Y axis

tBodyAccJerk-std()-Z	num
		std dev of Body Acc Jerk on the Z axis

tBodyGyro-mean()-X	num
		mean of Body Gyro on the X axis

tBodyGyro-mean()-Y	num
		mean of Body Gyro on the Y axis

tBodyGyro-mean()-Z	num
		mean of Body Gyro on the Z axis

tBodyGyro-std()-X	num
		std dev of Body Gyro on the X axis

tBodyGyro-std()-Y	num
		std dev of Body Gyro on the Y axis

tBodyGyro-std()-Z	num
		std dev of Body Gyro on the Z axis

tBodyGyroJerk-mean()-X	num
		mean of Body Gyro Jerk on the X axis

tBodyGyroJerk-mean()-Y	num
		mean of Body Gyro Jerk on the Y axis

tBodyGyroJerk-mean()-Z	num
		mean of Body Gyro Jerk on the Z axis

tBodyGyroJerk-std()-X	num
		std dev of Body Gyro Jerk on the X axis

tBodyGyroJerk-std()-Y	num
		std dev of Body Gyro Jerk on the Y axis

tBodyGyroJerk-std()-Z	num
		std dev of Body Gyro Jerk on the Z axis

tBodyAccMag-mean()	num
		mean of Body Acc Mag

tBodyAccMag-std()	num
		std dev of Body Acc Mag

tGravityAccMag-mean()	num
		mean of Gravity Acc Mag

tGravityAccMag-std()	num
		std dev of Gravity Acc Mag

tBodyAccJerkMag-mean()	num
		mean of Body Acc Jerk Mag

tBodyAccJerkMag-std()	num
		std dev of Body Acc Jerk Mag

tBodyGyroMag-mean()	num
		mean of Body Gyro Mag

tBodyGyroMag-std()	num
		std dev of Body Gyro Mag

tBodyGyroJerkMag-mean()	num
		mean of Body Gyro Jerk Mag

tBodyGyroJerkMag-std()	num
		std dev of Body Gyro Jerk Mag

fBodyAcc-mean()-X	num
		mean of Fast Fourier Transform of Body Acc on the X axis

fBodyAcc-mean()-Y	num
		mean of Fast Fourier Transform of Body Acc on the Y axis

fBodyAcc-mean()-Z	num
		mean of Fast Fourier Transform of Body Acc on the Z axis

fBodyAcc-std()-X	num
		std dev of Fast Fourier Transform of Body Acc on the X axis

fBodyAcc-std()-Y	num
		std dev of Fast Fourier Transform of Body Acc on the Y axis

fBodyAcc-std()-Z	num
		std dev of Fast Fourier Transform of Body Acc on the Z axis

fBodyAcc-meanFreq()-X	num
		mean frequency of Fast Fourier Transform of Body Acc on the X axis

fBodyAcc-meanFreq()-Y	num
		mean frequency of Fast Fourier Transform of Body Acc on the Y axis

fBodyAcc-meanFreq()-Z	num
		mean frequency of Fast Fourier Transform of Body Acc on the Z axis

fBodyAccJerk-mean()-X	num
		mean of Fast Fourier Transform of Body Acc Jerk on the X axis

fBodyAccJerk-mean()-Y	num
		mean of Fast Fourier Transform of Body Acc Jerk on the Y axis

fBodyAccJerk-mean()-Z	num
		mean of Fast Fourier Transform of Body Acc Jerk on the Z axis

fBodyAccJerk-std()-X	num
		std dev of Fast Fourier Transform of Body Acc Jerk on the X axis

fBodyAccJerk-std()-Y	num
		std dev of Fast Fourier Transform of Body Acc Jerk on the Y axis

fBodyAccJerk-std()-Z	num
		std dev of Fast Fourier Transform of Body Acc Jerk on the Z axis

fBodyAccJerk-meanFreq()-X	num
		mean frequency of Fast Fourier Transform of Body Acc Jerk on the X axis

fBodyAccJerk-meanFreq()-Y	num
		mean frequency of Fast Fourier Transform of Body Acc Jerk on the Y axis

fBodyAccJerk-meanFreq()-Z	num
		mean frequency of Fast Fourier Transform of Body Acc Jerk on the Z axis

fBodyGyro-mean()-X	num
		mean of Fast Fourier Transform of Body Gyro on the X axis

fBodyGyro-mean()-Y	num
		mean of Fast Fourier Transform of Body Gyro on the Y axis

fBodyGyro-mean()-Z	num
		mean of Fast Fourier Transform of Body Gyro on the Z axis

fBodyGyro-std()-X	num
		std dev of Fast Fourier Transform of Body Gyro on the X axis

fBodyGyro-std()-Y	num
		std dev of Fast Fourier Transform of Body Gyro on the X axis

fBodyGyro-std()-Z	num
		std dev of Fast Fourier Transform of Body Gyro on the X axis

fBodyGyro-meanFreq()-X	num
		mean frequency of Fast Fourier Transform of Body Gyro on the X axis

fBodyGyro-meanFreq()-Y	num
		mean frequency of Fast Fourier Transform of Body Gyro on the Y axis

fBodyGyro-meanFreq()-Z	num
		mean frequency of Fast Fourier Transform of Body Gyro on the Z axis

fBodyAccMag-mean()	num
		mean of Fast Fourier Transform of Body Acc Mag

fBodyAccMag-std()	num
		std dev of Fast Fourier Transform of Body Acc Mag

fBodyAccMag-meanFreq()	num
		mean frequency of Fast Fourier Transform of Body Acc Mag

fBodyBodyAccJerkMag-mean()	num
		mean of Fast Fourier Transform of Body Acc Jerk Mag

fBodyBodyAccJerkMag-std()	num
		std dev of Fast Fourier Transform of Body Acc Jerk Mag

fBodyBodyAccJerkMag-meanFreq()	num
		mean frequency of Fast Fourier Transform of Body Acc Jerk Mag

fBodyBodyGyroMag-mean()	num
		mean of Fast Fourier Transform of Body Gyro Mag

fBodyBodyGyroMag-std()	num
		std dev of Fast Fourier Transform of Body Gyro Mag

fBodyBodyGyroMag-meanFreq()	num
		mean frequency of Fast Fourier Transform of Body Gyro Mag

fBodyBodyGyroJerkMag-mean()	num
		mean of Fast Fourier Transform of Body Gyro Jerk Mag

fBodyBodyGyroJerkMag-std()	num
		std dev of Fast Fourier Transform of Body Gyro Jerk Mag

fBodyBodyGyroJerkMag-meanFreq()	num
		mean frequency of Fast Fourier Transform of Body Gyro Jerk Mag

