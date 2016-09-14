# Getting-and-Cleaning-Data
Assignment for the Getting and Cleaning Data Course of the Data Science Specialization
==============================================================================================
The original Human Activity Recognition dataset was made available by University of California Irvine at the website: 
#####http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

__Citation__:Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

============================================================================================
This present repository is a submission for the Getting and Cleaning Data Course Assignment. The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 

The script run_analys.R shows the whole R code to get from the raw dataset to the tidy dataset, achieving 5 tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Description of the R script:
===========================================================================================
1. Reads the activity_labels.txt and feature.txt as a data.frame object;
2. Reads the test set, test activities and test subjects (X_test.txt, y_test.txt and subject_test.txt) as data.frame objects;
3. Uses the feature labels as column names for the test set variables;
4. Merges the test set, the test activities, the activities labels and the test subjects into one test dataset;
5. Renames the new variables added for a better understanding;
6. Does the same steps in 2,3,4 and 5 for the train dataset;
7. Merges the train and test datasets into one humanactivity dataset;
8. Reorders the cases by Subject Id and Activity Code;
9. Selects only the measurements on the mean and standard deviation for each feature variable;
10. Substitutes the beginning of the feature variable's names started with "t" with the string "Time";
11. Substitutes the beginning of the feature variable's names started with "f" with the string "Freq";
12. Substitutes the repetition of the string Body in the feature variable's names for a single case;
13. Removes the parentheses after the words mean and std in the feature variable's names;
14. Create another independent tidy data set with the average of each variable for each activity and each subject with the dplyr package;
15. Saves the output of step 14 in a new .txt file.




