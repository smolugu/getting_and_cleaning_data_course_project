This file contains description of variables, the data and any transformations performed to clean up the data and perform analysis
=======================================================================
### Description of Data in Tidy Data set as per the original source
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

#### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Description of variables
The tidy data set created using the script file contains the following variables:

1. "subject.id" - The id of volunteers from whom the data is collected
2. "activity.name" - This field contains 6 levels of values which are the names of the activities each person performed. These are namely WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING
3. tBodyAcc.mean...X - Mean of the body acceleration signal recorded in X direction
4. tBodyAcc.mean...Y - Mean of the body acceleration signal recorded in Y direction
5. tBodyAcc.mean…Z  - Mean of the body acceleration signal recorded in Z direction  
6. tBodyAcc.std…X - Standard Deviation of the body acceleration signal recorded in X direction
7. tBodyAcc.std...Y - Standard Deviation of the body acceleration signal recorded in Y direction
8. tBodyAcc.std…Z - Standard Deviation of the body acceleration signal recorded in Z direction
9. tGravityAcc.mean…X - Mean of the gravity acceleration signal recorded in X direction
10. tGravityAcc.mean...Y - Mean of the gravity acceleration signal recorded in Y direction
11. tGravityAcc.mean…Z - Mean of the gravity acceleration signal recorded in Z direction
12. tGravityAcc.std…X - Standard Deviation of the gravity acceleration signal recorded in X direction
13. tGravityAcc.std...Y - Standard Deviation of the gravity acceleration signal recorded in Y direction
14. tGravityAcc.std…Z - Standard Deviation of the gravity acceleration signal recorded in Z direction
15. tBodyAccJerk.mean…X - Mean of body linear acceleration jerk signal in X direction
16. tBodyAccJerk.mean...Y - Mean of body linear acceleration jerk signal in Y direction
17. tBodyAccJerk.mean…Z - Mean of body linear acceleration jerk signal in Z direction
18. tBodyAccJerk.std…X - Standard Deviation of body linear acceleration jerk signal in X direction
19. tBodyAccJerk.std...Y - Standard Deviation of body linear acceleration jerk signal in Y direction
20. tBodyAccJerk.std...Z - Standard Deviation of body linear acceleration jerk signal in Z direction
21. tBodyGyro.mean…X - Mean of body angular velocity gyro signal in X direction
22. tBodyGyro.mean...Y - Mean of body angular velocity gyro signal in Y direction
23. tBodyGyro.mean…Z - Mean of body angular velocity gyro signal in Z direction
24. tBodyGyro.std…X - Standard deviation of body angular velocity gyro signal in X direction
25. tBodyGyro.std...Y - Standard deviation of body angular velocity gyro signal in Y direction
26. tBodyGyro.std…Z - Standard deviation of body angular velocity gyro signal in Z direction
27. tBodyGyroJerk.mean...X - Mean of body angular velocity gyro jerk signal in X direction
28. tBodyGyroJerk.mean...Y - Mean of body angular velocity gyro jerk signal in Y direction
29. tBodyGyroJerk.mean...Z - Mean of body angular velocity gyro jerk signal in Z direction
30. tBodyGyroJerk.std...X - Standard deviation of body angular velocity gyro jerk signal in X direction
31. tBodyGyroJerk.std...Y - Standard deviation of body angular velocity gyro jerk signal in Y direction
32. tBodyGyroJerk.std...Z - Standard deviation of body angular velocity gyro jerk signal in Z direction
33. tBodyAccMag.mean.. - Mean of the Magnitude of the three-dimensional body acceleration signals calculated using the Euclidean norm
34. tBodyAccMag.std.. - Standard deviation of the Magnitude of the three-dimensional body acceleration signals calculated using the Euclidean norm
35. tGravityAccMag.mean.. - Mean of the Magnitude of the three-dimensional gravity acceleration signals calculated using the Euclidean norm
36. tGravityAccMag.std.. - Standard deviation of the Magnitude of the three-dimensional gravity acceleration signals calculated using the Euclidean norm
37. tBodyAccJerkMag.mean.. - Mean of the Magnitude of the three-dimensional body linear acceleration jerk signals calculated using the Euclidean norm
38. tBodyAccJerkMag.std.. - Standard deviation of the Magnitude of the three-dimensional body linear acceleration jerk signals calculated using the Euclidean norm
39. tBodyGyroMag.mean.. - Mean of the magnitude of the three-dimensional body angular velocity gyro signals calculated using the Euclidean norm
40. tBodyGyroMag.std.. - Standard deviation of the magnitude of the three-dimensional body angular velocity gyro signals calculated using the Euclidean norm
41. tBodyGyroJerkMag.mean.. Mean of the three-dimensional body angular velocity gyro jerk signals calculated using the Euclidean norm
42. tBodyGyroJerkMag.std.. - Standard deviation of the three-dimensional body angular velocity gyro jerk signals calculated using the Euclidean norm
43. fBodyAcc.mean...X - Mean of the body acceleration signal recorded in X direction after applying Fast Fourier Transform (FFT) to the signal
44. fBodyAcc.mean...Y - Mean of the body acceleration signal recorded in Y direction after applying Fast Fourier Transform (FFT) to the signal
45. fBodyAcc.mean…Z - Mean of the body acceleration signal recorded in Z direction after applying Fast Fourier Transform (FFT) to the signal
46. fBodyAcc.std…X - Standard deviation of the body acceleration signal recorded in X direction after applying Fast Fourier Transform (FFT) to the signal
47. fBodyAcc.std...Y - Standard deviation of the body acceleration signal recorded in Y direction after applying Fast Fourier Transform (FFT) to the signal
48. fBodyAcc.std...Z - Standard deviation of the body acceleration signal recorded in Z direction after applying Fast Fourier Transform (FFT) to the signal
49. fBodyAccJerk.mean...X - Mean of body linear acceleration jerk signal in X direction after applying Fast Fourier Transform (FFT) to the signal
50. fBodyAccJerk.mean...Y -  Mean of body linear acceleration jerk signal in Y direction after applying Fast Fourier Transform (FFT) to the signal
51. fBodyAccJerk.mean...Z -  Mean of body linear acceleration jerk signal in Z direction after applying Fast Fourier Transform (FFT) to the signal
52. fBodyAccJerk.std...X - Standard deviation of body linear acceleration jerk signal in X direction after applying Fast Fourier Transform (FFT) to the signal
53. fBodyAccJerk.std...Y - Standard deviation of body linear acceleration jerk signal in Y direction after applying Fast Fourier Transform (FFT) to the signal
54. fBodyAccJerk.std...Z - Standard deviation of body linear acceleration jerk signal in Z direction after applying Fast Fourier Transform (FFT) to the signal
55. fBodyGyro.mean...X - Mean of body angular velocity gyro signal in X direction after applying Fast Fourier Transform (FFT) to the signal
56. fBodyGyro.mean...Y - Mean of body angular velocity gyro signal in Y direction after applying Fast Fourier Transform (FFT) to the signal
57. fBodyGyro.mean...Z - Mean of body angular velocity gyro signal in Z direction after applying Fast Fourier Transform (FFT) to the signal
58. fBodyGyro.std...X - Standard deviation of body angular velocity gyro signal in X direction after applying Fast Fourier Transform (FFT) to the signal
59. fBodyGyro.std...Y - Standard deviation of body angular velocity gyro signal in Y direction after applying Fast Fourier Transform (FFT) to the signal
60. fBodyGyro.std...Z - Standard deviation of body angular velocity gyro signal in Z direction after applying Fast Fourier Transform (FFT) to the signal
61. fBodyAccMag.mean.. - Mean of the Magnitude of the three-dimensional body acceleration signals calculated using the Euclidean norm and after applying Fast Fourier Transform (FFT) to the signal
62. fBodyAccMag.std.. - Standard deviation of the Magnitude of the three-dimensional body acceleration signals calculated using the Euclidean norm and after applying Fast Fourier Transform (FFT) to the signal
63. fBodyBodyAccJerkMag.mean.. - Mean of the Magnitude of the three-dimensional body linear acceleration jerk signals calculated using the Euclidean norm and after applying Fast Fourier Transform (FFT) to the signal
64. fBodyBodyAccJerkMag.std.. - Standard deviation of the Magnitude of the three-dimensional body linear acceleration jerk signals calculated using the Euclidean norm and after applying Fast Fourier Transform (FFT) to the signal
65. fBodyBodyGyroMag.mean.. - Mean of the magnitude of the three-dimensional body angular velocity gyro signals calculated using the Euclidean norm and after applying Fast Fourier Transform (FFT) to the signal
66. fBodyBodyGyroMag.std.. - Standard deviation of the magnitude of the three-dimensional body angular velocity gyro signals calculated using the Euclidean norm and after applying Fast Fourier Transform (FFT) to the signal
67. fBodyBodyGyroJerkMag.mean.. - Mean of the three-dimensional body angular velocity gyro jerk signals calculated using the Euclidean norm and after applying Fast Fourier Transform (FFT) to the signal
68. fBodyBodyGyroJerkMag.std.. - Standard deviation of the three-dimensional body angular velocity gyro jerk signals calculated using the Euclidean norm and after applying Fast Fourier Transform (FFT) to the signal


### Transformations on Data
1. A subset data is created from the whole data set to capture only the measurements on the mean and standard deviations for each measurement.
2. The second column in the tidy data set is created by replacing the activity id's with activity names as mentioned in the activity_labels.txt file
3. The mean and standard deviations of the above variables calculated over multiple observations are averaged by grouping subjects with each activity


