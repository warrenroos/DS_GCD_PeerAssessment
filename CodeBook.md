# DS_GCD_PeerAssessment
Data Science - Getting and Cleaning Data - Peer Assessment

# Codebook

This Codebook provides a description of all the variables, including units in the tidy dataset, along with descriptions of any summaries and calculations performed.  

# Raw Datasets 

## Raw Datasets - Training Datasets 

The following is the Body Acceleration data used for Training purposes.  This equals the body acceleration after accounting for (subtracting) gravity.  The units are in standard units 'g'.  There are 128 observations / row and 7352 rows.  The data is split into separate files by axis {x, y, z}.  

- data.train.body_acc_x = data from the file [UCI_HAR_Dataset]\train\InertialSignals\body_acc_x_train.txt 

- data.train.body_acc_y = data from the file [UCI_HAR_Dataset]\train\InertialSignals\body_acc_y_train.txt 

- data.train.body_acc_z = data from the file [UCI_HAR_Dataset]\train\InertialSignals\body_acc_z_train.txt 



The following is the Body Gyroscope data used for Training purposes.   This is the angular velocity measures in radians / s.  There are 128 observations / row and 7352 rows.  The data is split into separate files by axis {x, y, z}.   

- data.train.body_gyro_x = data from the file [UCI_HAR_Dataset]\train\InertialSignals\body_gyro_x_train.txt 

- data.train.body_gyro_y = data from the file [UCI_HAR_Dataset]\train\InertialSignals\body_gyro_y_train.txt 

- data.train.body_gyro_z = data from the file [UCI_HAR_Dataset]\train\InertialSignals\body_gyro_z_train.txt 


The following is the Total Acceleration data used for Training purposes,  This equals the total acceleration.  The units are in standard units 'g'.  There are 128 observations / row and 7352 rows.  The data is split into separate files by axis {x, y, z}.  

- data.train.total_acc_x = data from the file [UCI_HAR_Dataset]\train\InertialSignals\total_acc_x_train.txt 

- data.train.total_acc_y = data from the file [UCI_HAR_Dataset]\train\InertialSignals\total_acc_y_train.txt 

- data.train.total_acc_z = data from the file [UCI_HAR_Dataset]\train\InertialSignals\total_acc_z_train.txt 



## Raw Datasets - Testing Datasets 

The following is the Body Acceleration data used for Testing purposes.  This equals the body acceleration after accounting for (subtracting) gravity.  The units are in standard units 'g'.  There are 128 observations / row and 2947 rows.  The data is split into separate files by axis {x, y, z}.  

- data.test.body_acc_x = data from the file [UCI_HAR_Dataset]\test\InertialSignals\body_acc_x_test.txt 

- data.test.body_acc_y = data from the file [UCI_HAR_Dataset]\test\InertialSignals\body_acc_y_test.txt 

- data.test.body_acc_z = data from the file [UCI_HAR_Dataset]\test\InertialSignals\body_acc_z_test.txt 



The following is the Body Gyroscope data used for Testing purposes.   This is the angular velocity measures in radians / s.  There are 128 observations / row and 2947 rows.  The data is split into separate files by axis {x, y, z}.   

- data.test.body_gyro_x = data from the file [UCI_HAR_Dataset]\test\InertialSignals\body_gyro_x_test.txt 

- data.test.body_gyro_y = data from the file [UCI_HAR_Dataset]\test\InertialSignals\body_gyro_y_test.txt 

- data.test.body_gyro_z = data from the file [UCI_HAR_Dataset]\test\InertialSignals\body_gyro_z_test.txt 


The following is the Total Acceleration data used for Testing purposes,  This equals the total acceleration.  The units are in standard units 'g'.  There are 128 observations / row and 2947 rows.  The data is split into separate files by axis {x, y, z}.  

- data.test.total_acc_x = data from the file [UCI_HAR_Dataset]\test\InertialSignals\total_acc_x_test.txt 

- data.test.total_acc_y = data from the file [UCI_HAR_Dataset]\test\InertialSignals\total_acc_y_test.txt 

- data.test.total_acc_z = data from the file [UCI_HAR_Dataset]\test\InertialSignals\total_acc_z_test.txt 



## Raw Datasets - "Activity" Attribute of Training and Testing Datasets 

The "Activity" Attribute of the Training and Testing Datasets is a Factor variable and defined in a separate file (i.e. a "lookup" table).  The data in the file itself is in character format and converted to a factor variable upon reading it in.  

- data.main.activity = data from the file [UCI_HAR_Dataset]\activity_labels.txt 

There are 6 values for the "Activity" Value.  

- 1 "WALKING" 

- 2 "WALKING_UPSTAIRS" 

- 3 "WALKING_DOWNSTAIRS" 

- 4 "SITTING" 

- 5 "STANDING" 

- 6 "LAYING" 

The corresponding "Activity" attribute from the Training and Testing Datasets is stored in a separate file from the main datasets for each of Training and Testing, respectively.  While each contain 6 unique values, as described above the Training and Testing "y" files contain 7352 and 2947 rows, respectively.  

- data.train.y = data from the file [UCI_HAR_Dataset]\test\y_train.txt 

- data.test.y = data from the file [UCI_HAR_Dataset]\test\y_test.txt 

## Raw Datasets - "Person" Attribute of Training and Testing Datasets 

The "Person" Attribute of the Training and Testing Datasets is a Factor variable described textually by the original authors, but not captured in a separate variable.  It is represented as a numeric value between 1 and 30 inclusively.  Here, I created a lookup table for Person 

- data.main.person = data from the file [UCI_HAR_Dataset]\activity_labels.txt 

There are 30 values for the "Activity" Value, with the first 2 and last 2 shown here.  

- 1 "Person 1" 

- 2 "Person 2" 

... 
... 
... 

- 29 "Person 29" 

- 30 "Person 30" 

The corresponding "Person" attribute from the Training and Testing Datasets is stored in a separate file from the main datasets for each of Training and Testing, respectively.  While each contain a subset of the 30 unique values, as described above the Training and Testing "subject" files:  the Training file has 21 unique people and has 7352 rows, while the Testing file has 9 unique people and 2947 rows.  

- data.train.subject = data from the file [UCI_HAR_Dataset]\test\subject_train.txt 

- data.test.subject = data from the file [UCI_HAR_Dataset]\test\subject_test.txt 

## Raw Datasets - "Features" Column Names of Training and Testing Datasets 

The "Features" Column Names of the Training and Testing Datasets is contained within its own file with 561 unique values.  These values, representing column names for other datasets, are measurements both in the Time Domain and the Frequency Domain. 

- data.main.features = data from the file [UCI_HAR_Dataset]\features.txt 

These are used to assign appropriate column names to the "X" datasets for both Train and Test, which contain measurements both in the Time Domain and the Frequency Domain.  

- data.train.x = data from the file [UCI_HAR_Dataset]\test\x_train.txt 

- data.test.x = data from the file [UCI_HAR_Dataset]\test\x_test.txt 


## Temp Datasets - Combining the "Person" and "Activity" Attributes with the Training and Testing Datasets 

Per the Assignment, next the Person and Activity attributes were added to the Training and Testing datasets, thus creating a vertically combined dataset.  

- data.train.temp = column combining of data.train.subject, data.train.y, data.train.x 

- data.test.temp = column combining of data.test.subject, data.test.y, data.test.x 

## Temp Dataset - Combining the Training and Testing Datasets 

Per the assignment, after adding in a column TestOrTrain to each of the above datasets, with appropriate data values of "train" if it relates to the "Train" dataset or data values of "test" if it relates to the "Test" dataset, a horizontally combined dataset was created.

- data.combo.temp = row combining of data.train.temp, data.test.temp 

## Temp Dataset - Extracting out Mean and SD for each Feature of Combined Dataset 

Per the Assignment, the columns related to Mean and Std (Standard Deviation) were extracted from the above dataset to create a new dataset to reduce the # of columns in our dataset.  At the same time, I consolidated the columns for mean and std dev for each feature, creating a narrow dataset using the melt commnd and the grep statement. 

- data.melt.final = vertically filtering for colunns related to Mean and Std (Standard Deviation), plus making key value pairs leveraging the melt command and the grep statement. 
This results in a 5 variable dataset, and 813,621 rows.  

- personID - the subject / person with which the measurement is associated

- activityID - the activity with which the measurement is associated 

- TestOrTrain - a code field relating whether this measurement was related to the Test or Train DataSet {"train", "test"}

- featureName - the feature name with which the measurement is associated 

- value - the measurement itself 

