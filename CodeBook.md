# CodeBook - Tidy Dataset
##UCI - Human Activity Recognition Using Smartphones Data Set

This Codebook refers to a modified version of the original Human Activity Recognition Dataset (for more information: [README.md](https://github.com/brunobduarte/Getting-and-Cleaning-Data/blob/master/README.md)).
All changes made here were for the purpose of achieving a tidy dataset, based on the concept of [Jeff Leek] (https://github.com/jtleek/datasharing).

###Description of the experiment:
====================================
> "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain." 

__Citation__: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

###Transformations made:
===================================
The original train and test set were merged together into one dataset. Only the measurements on the mean and standard deviation for each measurement were maintained on the dataset. The labels for each of the six activities were used and the feature-variables names were changed for better comprehension of the data.
After these first steps, the data was aggregated by the average of each variable for each activity and each subject.
The resulting tidy dataset comprehends 40 rows and 68 fields(variables).

###For each record it is provided:
======================================
- An identifier of the subject who carried out the experiment.
- Its activity label. 
- A 66-feature vector with time and frequency domain variables - only mean and standard deviation measures.

###List of variables in the tidy dataset:
=====================================
 
- SubjectID -> The identifier of the subject who carried out the experiment - 30 volunteers.
- ActivityLabel -> A label for the activity performed in the experiment.
- TimeBodyAcc-mean-X -> The mean of the body acceleration - X direction (time domain).
- TimeBodyAcc-mean-Y -> The mean of the body acceleration - Y direction (time domain).
- TimeBodyAcc-mean-Z -> The mean of the body acceleration - Z direction (time domain).
- TimeBodyAcc-std-X -> The standard deviation of the body acceleration - X direction (time domain).
- TimeBodyAcc-std-Y -> The standard deviation of the body acceleration - Y direction (time domain).
- TimeBodyAcc-std-Z -> The standard deviation of the body acceleration - Z direction (time domain).
- TimeGravityAcc-mean-X -> The mean of the gravity acceleration - X direction (time domain).
- TimeGravityAcc-mean-Y -> The mean of the gravity acceleration - Y direction (time domain).
- TimeGravityAcc-mean-Z -> The mean of the gravity acceleration - Z direction (time domain).
- TimeGravityAcc-std-X -> The standard deviation of the gravity acceleration - X direction (time domain).
- TimeGravityAcc-std-Y -> The standard deviation of the gravity acceleration - Y direction (time domain).
- TimeGravityAcc-std-Z -> The standard deviation of the gravity acceleration - Z direction (time domain).
- TimeBodyAccJerk-mean-X -> The mean of the body acceleration jerk - X direction (time domain).
- TimeBodyAccJerk-mean-Y -> The mean of the body acceleration jerk - Y direction (time domain).
- TimeBodyAccJerk-mean-Z -> The mean of the body acceleration jerk - Z direction (time domain).
- TimeBodyAccJerk-std-X -> The standard deviation of the body acceleration jerk - X direction (time domain).
- TimeBodyAccJerk-std-Y -> The standard deviation of the body acceleration jerk - Y direction (time domain).
- TimeBodyAccJerk-std-Z -> The standard deviation of the body acceleration jerk - Z direction (time domain).
- TimeBodyGyro-mean-X -> The mean of the body angular velocity (gyroscope) - X direction (time domain).
- TimeBodyGyro-mean-Y -> The mean of the body angular velocity (gyroscope) - Y direction (time domain).
- TimeBodyGyro-mean-Z -> The mean of the body angular velocity (gyroscope) - Z direction (time domain).
- TimeBodyGyro-std-X -> The standard deviation of the body angular velocity (gyroscope) - X direction (time domain).
- TimeBodyGyro-std-Y -> The standard deviation of the body angular velocity (gyroscope) - Y direction (time domain).
- TimeBodyGyro-std-Z -> The standard deviation of the body angular velocity (gyroscope) - Z direction (time domain).
- TimeBodyGyroJerk-mean-X -> The mean of the body angular velocity jerk (gyroscope) - X direction (time domain).
- TimeBodyGyroJerk-mean-Y -> The mean of the body angular velocity jerk (gyroscope) - Y direction (time domain).
- TimeBodyGyroJerk-mean-Z -> The mean of the body angular velocity jerk (gyroscope) - Z direction (time domain).
- TimeBodyGyroJerk-std-X -> The standard deviation of the body angular velocity jerk (gyroscope) - X direction (time domain).
- TimeBodyGyroJerk-std-Y -> The standard deviation of the body angular velocity jerk (gyroscope) - Y direction (time domain).
- TimeBodyGyroJerk-std-Z -> The standard deviation of the body angular velocity jerk (gyroscope) - Z direction (time domain).
- TimeBodyAccMag-mean -> The mean of the body acceleration magnitude (time domain).
- TimeBodyAccMag-std -> The standard deviation of the body acceleration magnitude (time domain).
- TimeGravityAccMag-mean -> The mean of the gravity acceleration magnitude (time domain).
- TimeGravityAccMag-std -> The standard deviation of the gravity acceleration magnitude (time domain).
- TimeBodyAccJerkMag-mean -> The mean of the body acceleration jerk magnitude (time domain).
- TimeBodyAccJerkMag-std -> The standard deviation of the body acceleration jerk magnitude (time domain).
- TimeBodyGyroMag-mean -> The mean of the body angular velocity magnitude (gyroscope) (time domain).
- TimeBodyGyroMag-std -> The standard deviation of the body angular velocity magnitude (gyroscope) (time domain).
- TimeBodyGyroJerkMag-mean -> The mean of the body angular velocity jerk magnitude (gyroscope) (time domain).
- TimeBodyGyroJerkMag-std -> The standard deviation of the body angular velocity jerk magnitude (gyroscope) (time domain).
- FreqBodyAcc-mean-X -> The mean of the body acceleration - X direction (frequency domain).
- FreqBodyAcc-mean-Y -> The mean of the body acceleration - Y direction (frequency domain).
- FreqBodyAcc-mean-Z -> The mean of the body acceleration - Z direction (frequency domain).
- FreqBodyAcc-std-X -> The standard deviation of the body acceleration - X direction (frequency domain).
- FreqBodyAcc-std-Y -> The standard deviation of the body acceleration - Y direction (frequency domain).
- FreqBodyAcc-std-Z -> The standard deviation of the body acceleration - Z direction (frequency domain).
- FreqBodyAccJerk-mean-X -> The mean of the body acceleration jerk - X direction (frequency domain).
- FreqBodyAccJerk-mean-Y -> The mean of the body acceleration jerk - Y direction (frequency domain).
- FreqBodyAccJerk-mean-Z -> The mean of the body acceleration jerk - Z direction (frequency domain).
- FreqBodyAccJerk-std-X -> The standard deviation of the body acceleration jerk - X direction (frequency domain).
- FreqBodyAccJerk-std-Y -> The standard deviation of the body acceleration jerk - Y direction (frequency domain).
- FreqBodyAccJerk-std-Z -> The standard deviation of the body acceleration jerk - Z direction (frequency domain).
- FreqBodyGyro-mean-X -> The mean of the body angular velocity (gyroscope) - X direction (frequency domain).
- FreqBodyGyro-mean-Y -> The mean of the body angular velocity (gyroscope) - Y direction (frequency domain).
- FreqBodyGyro-mean-Z -> The mean of the body angular velocity (gyroscope) - Z direction (frequency domain).
- FreqBodyGyro-std-X -> The standard deviation of the body angular velocity (gyroscope) - X direction (frequency domain).
- FreqBodyGyro-std-Y -> The standard deviation of the body angular velocity (gyroscope) - Y direction (frequency domain).
- FreqBodyGyro-std-Z -> The standard deviation of the body angular velocity (gyroscope) - Z direction (frequency domain).
- FreqBodyAccMag-mean -> The mean of the body acceleration magnitude (frequency domain).
- FreqBodyAccMag-std -> The standard deviation of the body acceleration magnitude (frequency domain).
- FreqBodyAccJerkMag-mean -> The mean of the body acceleration jerk magnitude (frequency domain).
- FreqBodyAccJerkMag-std -> The standard deviation of the body acceleration jerk magnitude (frequency domain).
- FreqBodyGyroMag-mean -> The mean of the body angular velocity magnitude (gyroscope) (frequency domain).
- FreqBodyGyroMag-std -> The standard deviation of the body angular velocity magnitude (gyroscope) (frequency domain).
- FreqBodyGyroJerkMag-mean -> The mean of the body angular velocity jerk magnitude (gyroscope) (frequency domain).
- FreqBodyGyroJerkMag-std -> The standard deviation of the body angular velocity jerk magnitude (gyroscope) (frequency domain).





