Getting and Cleaning Data Tidy data Codebook
==============================================================


## Original Data

There original data comes from the smartphone accelerometer and gyroscope 3-axial raw signals, 
which have been processed using various signal processing techniques to measurement vector consisting
of 561 features. For detailed description of the original dataset, please see `features_info.txt` in
the zipped dataset file.



## Data sets

### Raw data set

The raw dataset was created using the following regular expression to filter out required
features, eg. the measurements on the mean and standard deviation for each measurement
from the original feature vector set 

`-(mean|std)\\(`

This regular expression selects 66 features from the original data set.
Combined with subject identifiers `subject` and activity labels `label`, this makes up the
68 variables of the processed raw data set.

The training and test subsets of the original dataset were combined to produce final raw dataset.

### Tidy data set

Tidy data set contains the average of all feature standard deviation and mean values of the raw dataset. 
Tidy data contains 180 rows and 81 columns. Each row has averaged variables for each subject and each activity.
Original variable names were modified in the follonwing way:

 1. Replaced `-mean` with `Mean`
 2. Replaced `-std` with `Std`
 3. Removed parenthesis `-()`
 4. Replaced `BodyBody` with `Body`
 5. Replaced  `t ` with  `time`
 6. Replaced `f` with `frequency`
 7. Replaced `Acc` with  `Accelerometer`
 8. Replavced `Gyro` with `Gyroscope`
 9. Replaced `Mag` with  `Magnitude` 
 

#### Sample of renamed variables compared to original variable name

 Raw data            | Tidy data 
 --------------------|--------------
 `subject`           | `Subject`
 `label`             | `Activity`
 `tBodyAcc-mean()-X` | `timeBodyAccelerometerMEAN-X`
 `tBodyAcc-mean()-Y` | `timeBodyAccelerometerMEAN-Y`
 `tBodyAcc-mean()-Z` | `timeBodyAccelerometerMEAN-Z`
 `tBodyAcc-std()-X`  | `BodyAccelerometerMagnitudeStDev-X`
 `tBodyAcc-std()-Y`  | `BodyAccelerometerMagnitudeStDev-Y`
 `tBodyAcc-std()-Z`  | `BodyAccelerometerMagnitudeStDev-Z`

## All rows are given by

[1] "Subject"                                        
 [2] "Activity"                                       
 [3] "timeBodyAccelerometerMEAN-X"                    
 [4] "timeBodyAccelerometerMEAN-Y"                    
 [5] "timeBodyAccelerometerMEAN-Z"                    
 [6] "timeBodyAccelerometerStDev-X"                   
 [7] "timeBodyAccelerometerStDev-Y"                   
 [8] "timeBodyAccelerometerStDev-Z"                   
 [9] "timeGravityAccelerometerMEAN-X"                 
[10] "timeGravityAccelerometerMEAN-Y"                 
[11] "timeGravityAccelerometerMEAN-Z"                 
[12] "timeGravityAccelerometerStDev-X"                
[13] "timeGravityAccelerometerStDev-Y"                
[14] "timeGravityAccelerometerStDev-Z"                
[15] "timeBodyAccelerometerJerkMEAN-X"                
[16] "timeBodyAccelerometerJerkMEAN-Y"                
[17] "timeBodyAccelerometerJerkMEAN-Z"                
[18] "timeBodyAccelerometerJerkStDev-X"               
[19] "timeBodyAccelerometerJerkStDev-Y"               
[20] "timeBodyAccelerometerJerkStDev-Z"               
[21] "timeBodyGyroscopeMEAN-X"                        
[22] "timeBodyGyroscopeMEAN-Y"                        
[23] "timeBodyGyroscopeMEAN-Z"                        
[24] "timeBodyGyroscopeStDev-X"                       
[25] "timeBodyGyroscopeStDev-Y"                       
[26] "timeBodyGyroscopeStDev-Z"                       
[27] "timeBodyGyroscopeJerkMEAN-X"                    
[28] "timeBodyGyroscopeJerkMEAN-Y"                    
[29] "timeBodyGyroscopeJerkMEAN-Z"                    
[30] "timeBodyGyroscopeJerkStDev-X"                   
[31] "timeBodyGyroscopeJerkStDev-Y"                   
[32] "timeBodyGyroscopeJerkStDev-Z"                   
[33] "timeBodyAccelerometerMagnitudeMEAN"             
[34] "timeBodyAccelerometerMagnitudeStDev"            
[35] "timeGravityAccelerometerMagnitudeMEAN"          
[36] "timeGravityAccelerometerMagnitudeStDev"         
[37] "timeBodyAccelerometerJerkMagnitudeMEAN"         
[38] "timeBodyAccelerometerJerkMagnitudeStDev"        
[39] "timeBodyGyroscopeMagnitudeMEAN"                 
[40] "timeBodyGyroscopeMagnitudeStDev"                
[41] "timeBodyGyroscopeJerkMagnitudeMEAN"             
[42] "timeBodyGyroscopeJerkMagnitudeStDev"            
[43] "frequencyBodyAccelerometerMEAN-X"               
[44] "frequencyBodyAccelerometerMEAN-Y"               
[45] "frequencyBodyAccelerometerMEAN-Z"               
[46] "frequencyBodyAccelerometerStDev-X"              
[47] "frequencyBodyAccelerometerStDev-Y"              
[48] "frequencyBodyAccelerometerStDev-Z"              
[49] "frequencyBodyAccelerometerMEANFreq-X"           
[50] "frequencyBodyAccelerometerMEANFreq-Y"           
[51] "frequencyBodyAccelerometerMEANFreq-Z"           
[52] "frequencyBodyAccelerometerJerkMEAN-X"           
[53] "frequencyBodyAccelerometerJerkMEAN-Y"           
[54] "frequencyBodyAccelerometerJerkMEAN-Z"           
[55] "frequencyBodyAccelerometerJerkStDev-X"          
[56] "frequencyBodyAccelerometerJerkStDev-Y"          
[57] "frequencyBodyAccelerometerJerkStDev-Z"          
[58] "frequencyBodyAccelerometerJerkMEANFreq-X"       
[59] "frequencyBodyAccelerometerJerkMEANFreq-Y"       
[60] "frequencyBodyAccelerometerJerkMEANFreq-Z"       
[61] "frequencyBodyGyroscopeMEAN-X"                   
[62] "frequencyBodyGyroscopeMEAN-Y"                   
[63] "frequencyBodyGyroscopeMEAN-Z"                   
[64] "frequencyBodyGyroscopeStDev-X"                  
[65] "frequencyBodyGyroscopeStDev-Y"                  
[66] "frequencyBodyGyroscopeStDev-Z"                  
[67] "frequencyBodyGyroscopeMEANFreq-X"               
[68] "frequencyBodyGyroscopeMEANFreq-Y"               
[69] "frequencyBodyGyroscopeMEANFreq-Z"               
[70] "frequencyBodyAccelerometerMagnitudeMEAN"        
[71] "frequencyBodyAccelerometerMagnitudeStDev"       
[72] "frequencyBodyAccelerometerMagnitudeMEANFreq"    
[73] "frequencyBodyAccelerometerJerkMagnitudeMEAN"    
[74] "frequencyBodyAccelerometerJerkMagnitudeStDev"   
[75] "frequencyBodyAccelerometerJerkMagnitudeMEANFreq"
[76] "frequencyBodyGyroscopeMagnitudeMEAN"            
[77] "frequencyBodyGyroscopeMagnitudeStDev"           
[78] "frequencyBodyGyroscopeMagnitudeMEANFreq"        
[79] "frequencyBodyGyroscopeJerkMagnitudeMEAN"        
[80] "frequencyBodyGyroscopeJerkMagnitudeStDev"       
[81] "frequencyBodyGyroscopeJerkMagnitudeMEANFreq"    

## Variable  data type 
   Subject and Activity are of factor type and rest are of numeric type 