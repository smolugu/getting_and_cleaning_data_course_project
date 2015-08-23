Calulate Mean and Standard Deviations on Data Collected from Subjects Wearing a smartphone and performing various activities
==========================================================================

## Data used for the analysis

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The raw data used here represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Steps to follow to replicate the data clean up and perform analysis

* The data from the above resource, download and unzipped, should be present in the current working directory along with the script file - run_analysis.R
* The downloaded data folder contains two subfolders with test and train data. The data in these folders are combined into one large data set and labeled as per the activity names and variables contained in activity_labels.txt and features_info.txt respectively
* A subset from above data set is created which contains only the measurements on the mean and standard deviation for each measurement
* The labels are then created or modified to be more descriptive and valid as per R conventions
* The data is then grouped by each subject and activities performed by them
* Finally a data set is created which contains the average of variables corresponding to mean and standard deviation of each subject and activity
* The script requires "dplyr" package installed in RStudio. Additional packages might be required as per the version of RStudio on your local machine


### Files in the Repo

* README.md : It gives information about the data used and steps performed to run the script, run_analysis.R, along with any assumptions about the data 

* CodeBook.md : It describes the variables, the data, and any transformations or work that was performed to clean up the data and perform analysis

* run_analysis.R : It contains the script which cleans up the raw data and prepares the data to calculate mean and standard deviations