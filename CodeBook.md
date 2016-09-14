## CodeBook - UCI - Human Activity Recognition Using Smartphones Data Set

This Codebook refers to a modified version of the original Human Activity Recognition Dataset (for more information: [README.md](https://github.com/brunobduarte/Getting-and-Cleaning-Data/blob/master/README.md)).
All changes made here were for the purpose of achieving a tidy dataset, based on the concept of [Jeff Leek] (https://github.com/jtleek/datasharing).

###Description of the experiment:
====================================
> "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details." 

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

=====================================
 
###List of variables in the tidy dataset:




