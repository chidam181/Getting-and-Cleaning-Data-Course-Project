**Codebook**
The numbers beside these represent the unique number assigned to each of the individuals in the group of 30.
	Activity labels
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
For each record,
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
**Variables**
- x_train, x_test, y_train, y_test, subject_train and subject_train are the data provided
- merged is the combined data 
- features contains the names for x dataset, while merged_mean_std is the data to which these names are applied.
- des_lab contains a column of corrected names
- mean_merged is the final data which is the average of each variable for each activity and each subject
