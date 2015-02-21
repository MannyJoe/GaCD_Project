---
title: "CodeBook.md"
author: "Manny Joe (getdata-011)"
date: "Friday, February 20, 2015"
output: html_document
---

The **Getting and Cleaning Data** Coursera Course (*getdata-011*) Project includes this code book, which describes: 

      I. The Variables
      II. The Data
      III. Transformations / Work Performed to Clean Data

### I. The Variables

Background: In the *tidyData.txt* created by the *run_analysi.R* script, there are 68 variables listed that identify test subjects, their measured activities, and 66 corresponding variables.  These 66 variables were extracted from the original 561 variables found in two datasets: *X_train.txt* and *X_test.txt*

* *The original 561 variables come from accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ, where the acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.* (Source: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip -- File: features_info.txt)

The project directed students to extract from the two datasets, *X_train.txt* and *X_test.txt*, a set of variables that were estimated from the measured signals related to 1) Mean values, identified by labels that included "mean()" and 2) Standard deviation, identified by labels that included "std()". This resulted in 66 variables

**NOTE:** I limited the inclusion of 1) *Mean* values to variables that had "*mean()*" in their labels in order to match the 2) *Standard variables* available

#### Variable List and Descriptions


No. | Variable                 | Description
----|--------------------------|------------
1   | Subject                  | Subject ID; range from 1 to 30
2   | Activity                 | Activity name (6 activities)
3   | tBodyAccmeanX            | Mean of body acceleration in direction X
4   | tBodyAccmeanY            | Mean of body acceleration in direction Y
5   | tBodyAccmeanZ            | Mean of body acceleration in direction Z
6   | tBodyAccstdX             | Standard deviation of body acceleration in direction X
7   | tBodyAccstdY             | Standard deviation of body acceleration in direction Y
8   | tBodyAccstdZ             | Standard deviation of body acceleration in direction Z
9   | tGravityAccmeanX         | Mean of Gravity Acceleration in the direction of X
10  | tGravityAccmeanY         | Mean of Gravity Acceleration in the direction of Y
11  | tGravityAccmeanZ         | Mean of Gravity Acceleration in the direction of Z
12  | tGravityAccstdX          | Standard deviation of Gravity Acceleration in the direction of X
13  | tGravityAccstdY          | Standard deviation of Gravity Acceleration in the direction of Y
14  | tGravityAccstdZ          | Standard deviation of Gravity Acceleration in the direction of Z
15  | tBodyAccJerkmeanX        | Mean of body jerk signal in direction X
16  | tBodyAccJerkmeanY        | Mean of body jerk signal in direction Y
17  | tBodyAccJerkmeanZ        | Mean of body jerk signal in direction Z
18  | tBodyAccJerkstdX         | Standard deviation of body jerk signal in direction X
19  | tBodyAccJerkstdY         | Standard deviation of body jerk signal in direction Y
20  | tBodyAccJerkstdZ         | Standard deviation of body jerk signal in direction Z
21  | tBodyGyromeanX           | Mean of Body Gyroscope in the direction of X
22  | tBodyGyromeanY           | Mean of Body Gyroscope in the direction of Y
23  | tBodyGyromeanZ           | Mean of Body Gyroscope in the direction of Z
24  | tBodyGyrostdX            | Standard deviation of Body Gyroscope in the direction of X
25  | tBodyGyrostdY            | Standard deviation of Body Gyroscope in the direction of Y
26  | tBodyGyrostdZ            | Standard deviation of Body Gyroscope in the direction of Z
27  | tBodyGyroJerkmeanX       | Mean of Body Gyroscope Jerk signal in the direction of X
28  | tBodyGyroJerkmeanY       | Mean of Body Gyroscope Jerk signal in the direction of Y
29  | tBodyGyroJerkmeanZ       | Mean of Body Gyroscope Jerk signal in the direction of Z
30  | tBodyGyroJerkstdX        | Standard deviation of Body Gyroscope Jerk signal in the direction of X
31  | tBodyGyroJerkstdY        | Standard deviation of Body Gyroscope Jerk signal in the direction of Y
32  | tBodyGyroJerkstdZ        | Standard deviation of Body Gyroscope Jerk signal in the direction of Z
33  | tBodyAccMagmean          | Mean of Magnitude of 3-dimensional signals using Euclidean norm 
34  | tBodyAccMagstd           | Standard deviation of 3-dimensional signals using Euclidean norm 
35  | tGravityAccMagmean       | Mean of Magnitude of 3-dimensional signals using Euclidean norm 
36  | tGravityAccMagstd        | Standard deviation of 3-dimensional signals using Euclidean norm 
37  | tBodyAccJerkMagmean      | Mean of Magnitude of 3-dimensional signals using Euclidean norm 
38  | tBodyAccJerkMagstd       | Standard deviation of 3-dimensional signals using Euclidean norm 
39  | tBodyGyroMagmean         | Mean of Magnitude of 3-dimensional signals using Euclidean norm 
40  | tBodyGyroMagstd          | Standard deviation of 3-dimensional signals using Euclidean norm 
41  | tBodyGyroJerkMagmean     | Mean of Magnitude of 3-dimensional signals using Euclidean norm 
42  | tBodyGyroJerkMagstd      | Standard deviation of 3-dimensional signals using Euclidean norm 
43  | fBodyAccmeanX            | Mean of body acceleration in direction X (Fast Fourier Transform)
44  | fBodyAccmeanY            | Mean of body acceleration in direction Y (Fast Fourier Transform)
45  | fBodyAccmeanZ            | Mean of body acceleration in direction Z (Fast Fourier Transform)
46  | fBodyAccstdX             | Standard deviation of body acceleration in direction X (Fast Fourier Transform)
47  | fBodyAccstdY             | Standard deviation of body acceleration in direction Y (Fast Fourier Transform)
48  | fBodyAccstdZ             | Standard deviation of body acceleration in direction Z (Fast Fourier Transform)
49  | fBodyAccJerkmeanX        | Mean of body jerk signal in direction X (Fast Fourier Transform)
50  | fBodyAccJerkmeanY        | Mean of body jerk signal in direction Y (Fast Fourier Transform)
51  | fBodyAccJerkmeanZ        | Mean of body jerk signal in direction Z (Fast Fourier Transform)
52  | fBodyAccJerkstdX         | Standard deviation of body jerk signal in direction X (Fast Fourier Transform)
53  | fBodyAccJerkstdY         | Standard deviation of body jerk signal in direction Y (Fast Fourier Transform)
54  | fBodyAccJerkstdZ         | Standard deviation of body jerk signal in direction Z (Fast Fourier Transform)
55  | fBodyGyromeanX           | Mean of Body Gyroscope in the direction of X (Fast Fourier Transform)
56  | fBodyGyromeanY           | Mean of Body Gyroscope in the direction of Y (Fast Fourier Transform)
57  | fBodyGyromeanZ           | Mean of Body Gyroscope in the direction of Z (Fast Fourier Transform)
58  | fBodyGyrostdX            | Standard deviation of Body Gyroscope in the direction of X (Fast Fourier Transform)
59  | fBodyGyrostdY            | Standard deviation of Body Gyroscope in the direction of Y (Fast Fourier Transform)
60  | fBodyGyrostdZ            | Standard deviation of Body Gyroscope in the direction of Z (Fast Fourier Transform)
61  | fBodyAccMagmean          | Mean of Magnitude of 3-dimensional signals using Euclidean norm (Fast Fourier Transform)
62  | fBodyAccMagstd           | Standard deviation of 3-dimensional signals using Euclidean norm (Fast Fourier Transform)
63  | fBodyBodyAccJerkMagmean  | Mean of Magnitude of 3-dimensional signals using Euclidean norm (Fast Fourier Transform)
64  | fBodyBodyAccJerkMagstd   | Standard deviation of 3-dimensional signals using Euclidean norm (Fast Fourier Transform)
65  | fBodyBodyGyroMagmean     | Mean of Magnitude of 3-dimensional signals using Euclidean norm (Fast Fourier Transform)
66  | fBodyBodyGyroMagstd      | Standard deviation of 3-dimensional signals using Euclidean norm (Fast Fourier Transform)
67  | fBodyBodyGyroJerkMagmean | Mean of Magnitude of 3-dimensional signals using Euclidean norm (Fast Fourier Transform)
68  | fBodyBodyGyroJerkMagstd  | Standard deviation of 3-dimensional signals using Euclidean norm (Fast Fourier Transform)

### II. The Data

The "tidyData" object is classified as a `data.table` and `data.frame` with 180 observations of 68 variables.  The file size created by the `write.table` equals 111184 bytes (0.1 MB) and is named "tidyData.txt" located in the working directory.

**Running the `summary(tidyData)` command in R produces the following table:**

```
    Subject                   Activity  tBodyAccmeanX    tBodyAccmeanY      
 Min.   : 1.0   LAYING            :30   Min.   :0.2216   Min.   :-0.040514  
 1st Qu.: 8.0   SITTING           :30   1st Qu.:0.2713   1st Qu.:-0.019809  
 Median :15.5   STANDING          :30   Median :0.2768   Median :-0.017268  
 Mean   :15.5   WALKING           :30   Mean   :0.2745   Mean   :-0.017921  
 3rd Qu.:23.0   WALKING_DOWNSTAIRS:30   3rd Qu.:0.2800   3rd Qu.:-0.015119  
 Max.   :30.0   WALKING_UPSTAIRS  :30   Max.   :0.3015   Max.   :-0.001308  
 tBodyAccmeanZ       tBodyAccstdX      tBodyAccstdY       tBodyAccstdZ     tGravityAccmeanX 
 Min.   :-0.15251   Min.   :-0.9958   Min.   :-0.99024   Min.   :-0.9877   Min.   :-0.6800  
 1st Qu.:-0.11153   1st Qu.:-0.9810   1st Qu.:-0.94331   1st Qu.:-0.9492   1st Qu.: 0.8424  
 Median :-0.10777   Median :-0.7390   Median :-0.44697   Median :-0.6428   Median : 0.9162  
 Mean   :-0.10924   Mean   :-0.5619   Mean   :-0.46343   Mean   :-0.5789   Mean   : 0.6966  
 3rd Qu.:-0.10427   3rd Qu.:-0.2077   3rd Qu.:-0.02652   3rd Qu.:-0.2306   3rd Qu.: 0.9429  
 Max.   :-0.07288   Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.2507   Max.   : 0.9745  
 tGravityAccmeanY   tGravityAccmeanZ    tGravityAccstdX   tGravityAccstdY   tGravityAccstdZ  
 Min.   :-0.45777   Min.   :-0.379060   Min.   :-0.9968   Min.   :-0.9942   Min.   :-0.9910  
 1st Qu.:-0.23620   1st Qu.:-0.095261   1st Qu.:-0.9821   1st Qu.:-0.9718   1st Qu.:-0.9609  
 Median :-0.13140   Median : 0.009492   Median :-0.9700   Median :-0.9603   Median :-0.9457  
 Mean   :-0.01281   Mean   : 0.075118   Mean   :-0.9639   Mean   :-0.9517   Mean   :-0.9362  
 3rd Qu.: 0.12743   3rd Qu.: 0.152182   3rd Qu.:-0.9507   3rd Qu.:-0.9370   3rd Qu.:-0.9184  
 Max.   : 0.95489   Max.   : 0.918783   Max.   :-0.7879   Max.   :-0.5436   Max.   :-0.6307  
 tBodyAccJerkmeanX tBodyAccJerkmeanY   tBodyAccJerkmeanZ   tBodyAccJerkstdX 
 Min.   :0.04455   Min.   :-0.038687   Min.   :-0.051967   Min.   :-0.9946  
 1st Qu.:0.07439   1st Qu.: 0.001894   1st Qu.:-0.009893   1st Qu.:-0.9826  
 Median :0.07660   Median : 0.009061   Median :-0.003497   Median :-0.7869  
 Mean   :0.07925   Mean   : 0.007887   Mean   :-0.005008   Mean   :-0.6005  
 3rd Qu.:0.08235   3rd Qu.: 0.014098   3rd Qu.: 0.001396   3rd Qu.:-0.2400  
 Max.   :0.13353   Max.   : 0.056819   Max.   : 0.038053   Max.   : 0.5443  
 tBodyAccJerkstdY  tBodyAccJerkstdZ   tBodyGyromeanX     tBodyGyromeanY    
 Min.   :-0.9895   Min.   :-0.99329   Min.   :-0.20578   Min.   :-0.18146  
 1st Qu.:-0.9726   1st Qu.:-0.98252   1st Qu.:-0.04623   1st Qu.:-0.08491  
 Median :-0.7557   Median :-0.86684   Median :-0.02778   Median :-0.07292  
 Mean   :-0.5702   Mean   :-0.73715   Mean   :-0.03187   Mean   :-0.07417  
 3rd Qu.:-0.1785   3rd Qu.:-0.50405   3rd Qu.:-0.01723   3rd Qu.:-0.06274  
 Max.   : 0.3553   Max.   : 0.02175   Max.   : 0.13498   Max.   : 0.02747  
 tBodyGyromeanZ     tBodyGyrostdX     tBodyGyrostdY     tBodyGyrostdZ     tBodyGyroJerkmeanX
 Min.   :-0.02857   Min.   :-0.9943   Min.   :-0.9928   Min.   :-0.9851   Min.   :-0.15721  
 1st Qu.: 0.07474   1st Qu.:-0.9739   1st Qu.:-0.9640   1st Qu.:-0.9617   1st Qu.:-0.10277  
 Median : 0.08430   Median :-0.7890   Median :-0.7978   Median :-0.7760   Median :-0.09864  
 Mean   : 0.08757   Mean   :-0.6919   Mean   :-0.6579   Mean   :-0.6208   Mean   :-0.09635  
 3rd Qu.: 0.10206   3rd Qu.:-0.4414   3rd Qu.:-0.4001   3rd Qu.:-0.3106   3rd Qu.:-0.09226  
 Max.   : 0.16756   Max.   : 0.2677   Max.   : 0.2595   Max.   : 0.1597   Max.   :-0.02198  
 tBodyGyroJerkmeanY tBodyGyroJerkmeanZ  tBodyGyroJerkstdX tBodyGyroJerkstdY tBodyGyroJerkstdZ
 Min.   :-0.07487   Min.   :-0.090300   Min.   :-0.9965   Min.   :-0.9971   Min.   :-0.9954  
 1st Qu.:-0.04497   1st Qu.:-0.061537   1st Qu.:-0.9804   1st Qu.:-0.9835   1st Qu.:-0.9837  
 Median :-0.04135   Median :-0.053402   Median :-0.8389   Median :-0.8919   Median :-0.8318  
 Mean   :-0.04255   Mean   :-0.054787   Mean   :-0.7040   Mean   :-0.7658   Mean   :-0.7138  
 3rd Qu.:-0.03823   3rd Qu.:-0.049141   3rd Qu.:-0.4602   3rd Qu.:-0.5842   3rd Qu.:-0.4741  
 Max.   :-0.01320   Max.   :-0.006941   Max.   : 0.1791   Max.   : 0.2959   Max.   : 0.1757  
 tBodyAccMagmean    tBodyAccMagstd    tGravityAccMagmean tGravityAccMagstd
 Min.   :-0.98649   Min.   :-0.9865   Min.   :-0.98649   Min.   :-0.9865  
 1st Qu.:-0.95719   1st Qu.:-0.9470   1st Qu.:-0.95719   1st Qu.:-0.9470  
 Median :-0.44624   Median :-0.5805   Median :-0.44624   Median :-0.5805  
 Mean   :-0.50052   Mean   :-0.5483   Mean   :-0.50052   Mean   :-0.5483  
 3rd Qu.:-0.09804   3rd Qu.:-0.2119   3rd Qu.:-0.09804   3rd Qu.:-0.2119  
 Max.   : 0.64460   Max.   : 0.4135   Max.   : 0.64460   Max.   : 0.4135  
 tBodyAccJerkMagmean tBodyAccJerkMagstd tBodyGyroMagmean  tBodyGyroMagstd  
 Min.   :-0.9927     Min.   :-0.9946    Min.   :-0.9807   Min.   :-0.9818  
 1st Qu.:-0.9807     1st Qu.:-0.9775    1st Qu.:-0.9456   1st Qu.:-0.9503  
 Median :-0.7918     Median :-0.7800    Median :-0.6410   Median :-0.7420  
 Mean   :-0.6123     Mean   :-0.5889    Mean   :-0.5684   Mean   :-0.6335  
 3rd Qu.:-0.2615     3rd Qu.:-0.2334    3rd Qu.:-0.2090   3rd Qu.:-0.3498  
 Max.   : 0.4345     Max.   : 0.4506    Max.   : 0.4180   Max.   : 0.2378  
 tBodyGyroJerkMagmean tBodyGyroJerkMagstd fBodyAccmeanX     fBodyAccmeanY     
 Min.   :-0.99732     Min.   :-0.9977     Min.   :-0.9952   Min.   :-0.98903  
 1st Qu.:-0.98560     1st Qu.:-0.9811     1st Qu.:-0.9797   1st Qu.:-0.95394  
 Median :-0.86299     Median :-0.8780     Median :-0.7611   Median :-0.55865  
 Mean   :-0.73850     Mean   :-0.7566     Mean   :-0.5805   Mean   :-0.49267  
 3rd Qu.:-0.51645     3rd Qu.:-0.5853     3rd Qu.:-0.2575   3rd Qu.:-0.06205  
 Max.   : 0.08758     Max.   : 0.2502     Max.   : 0.5370   Max.   : 0.52419  
 fBodyAccmeanZ      fBodyAccstdX      fBodyAccstdY       fBodyAccstdZ     fBodyAccJerkmeanX
 Min.   :-0.9895   Min.   :-0.9962   Min.   :-0.99068   Min.   :-0.9872   Min.   :-0.9946  
 1st Qu.:-0.9613   1st Qu.:-0.9819   1st Qu.:-0.94006   1st Qu.:-0.9453   1st Qu.:-0.9828  
 Median :-0.7193   Median :-0.7315   Median :-0.45271   Median :-0.6339   Median :-0.7896  
 Mean   :-0.6319   Mean   :-0.5562   Mean   :-0.48378   Mean   :-0.5860   Mean   :-0.6192  
 3rd Qu.:-0.3170   3rd Qu.:-0.2086   3rd Qu.:-0.07685   3rd Qu.:-0.2560   3rd Qu.:-0.2860  
 Max.   : 0.2639   Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.3362   Max.   : 0.4743  
 fBodyAccJerkmeanY fBodyAccJerkmeanZ fBodyAccJerkstdX  fBodyAccJerkstdY  fBodyAccJerkstdZ   
 Min.   :-0.9894   Min.   :-0.9920   Min.   :-0.9951   Min.   :-0.9905   Min.   :-0.993108  
 1st Qu.:-0.9728   1st Qu.:-0.9799   1st Qu.:-0.9846   1st Qu.:-0.9744   1st Qu.:-0.983726  
 Median :-0.7655   Median :-0.8525   Median :-0.8059   Median :-0.7715   Median :-0.880132  
 Mean   :-0.5928   Mean   :-0.7159   Mean   :-0.6175   Mean   :-0.5754   Mean   :-0.757326  
 3rd Qu.:-0.2064   3rd Qu.:-0.4693   3rd Qu.:-0.2892   3rd Qu.:-0.1788   3rd Qu.:-0.540828  
 Max.   : 0.2767   Max.   : 0.1514   Max.   : 0.4768   Max.   : 0.3498   Max.   :-0.006236  
 fBodyGyromeanX    fBodyGyromeanY    fBodyGyromeanZ    fBodyGyrostdX     fBodyGyrostdY    
 Min.   :-0.9931   Min.   :-0.9937   Min.   :-0.9860   Min.   :-0.9947   Min.   :-0.9922  
 1st Qu.:-0.9704   1st Qu.:-0.9688   1st Qu.:-0.9633   1st Qu.:-0.9749   1st Qu.:-0.9611  
 Median :-0.7300   Median :-0.8105   Median :-0.7533   Median :-0.8052   Median :-0.7924  
 Mean   :-0.6372   Mean   :-0.6804   Mean   :-0.6097   Mean   :-0.7112   Mean   :-0.6504  
 3rd Qu.:-0.3448   3rd Qu.:-0.4277   3rd Qu.:-0.2635   3rd Qu.:-0.4820   3rd Qu.:-0.3651  
 Max.   : 0.4750   Max.   : 0.3376   Max.   : 0.2570   Max.   : 0.1966   Max.   : 0.2866  
 fBodyGyrostdZ      fBodyAccMagmean   fBodyAccMagstd    fBodyBodyAccJerkMagmean
 Min.   :-0.98648   Min.   :-0.9868   Min.   :-0.9876   Min.   :-0.9940        
 1st Qu.:-0.96482   1st Qu.:-0.9564   1st Qu.:-0.9492   1st Qu.:-0.9770        
 Median :-0.80559   Median :-0.6522   Median :-0.6434   Median :-0.7680        
 Mean   :-0.66133   Mean   :-0.5414   Mean   :-0.6244   Mean   :-0.5809        
 3rd Qu.:-0.39397   3rd Qu.:-0.1846   3rd Qu.:-0.3660   3rd Qu.:-0.1893        
 Max.   : 0.01831   Max.   : 0.5866   Max.   : 0.1531   Max.   : 0.5384        
 fBodyBodyAccJerkMagstd fBodyBodyGyroMagmean fBodyBodyGyroMagstd fBodyBodyGyroJerkMagmean
 Min.   :-0.9944        Min.   :-0.9868      Min.   :-0.98167    Min.   :-0.9976         
 1st Qu.:-0.9757        1st Qu.:-0.9626      1st Qu.:-0.94986    1st Qu.:-0.9821         
 Median :-0.7983        Median :-0.7657      Median :-0.77273    Median :-0.8751         
 Mean   :-0.6032        Mean   :-0.6698      Mean   :-0.67513    Mean   :-0.7582         
 3rd Qu.:-0.2744        3rd Qu.:-0.4089      3rd Qu.:-0.42769    3rd Qu.:-0.5881         
 Max.   : 0.3163        Max.   : 0.2040      Max.   : 0.03204    Max.   : 0.1466         
 fBodyBodyGyroJerkMagstd
 Min.   :-0.9976        
 1st Qu.:-0.9807        
 Median :-0.8911        
 Mean   :-0.7726        
 3rd Qu.:-0.6097        
 Max.   : 0.2878   
```

**Running the `str(tidyData)` command in R produces the following table:**
```
 $ Subject                 : int  1 1 1 1 1 1 2 2 2 2 ...
 $ Activity                : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 6 1 2 3 4 ...
 $ tBodyAccmeanX           : num  0.281 0.276 0.278 0.276 0.278 ...
 $ tBodyAccmeanY           : num  -0.0182 -0.0131 -0.0173 -0.0186 -0.0227 ...
 $ tBodyAccmeanZ           : num  -0.107 -0.11 -0.104 -0.106 -0.117 ...
 $ tBodyAccstdX            : num  -0.9741 -0.9867 -0.9851 -0.4236 0.0464 ...
 $ tBodyAccstdY            : num  -0.9803 -0.949 -0.9361 -0.0781 0.2629 ...
 $ tBodyAccstdZ            : num  -0.984 -0.959 -0.931 -0.425 -0.103 ...
 $ tGravityAccmeanX        : num  -0.51 0.927 0.915 0.913 0.862 ...
 $ tGravityAccmeanY        : num  0.7525 -0.0246 -0.2702 -0.3466 -0.3258 ...
 $ tGravityAccmeanZ        : num  0.6468 0.1947 0.1537 0.0847 -0.0439 ...
 $ tGravityAccstdX         : num  -0.959 -0.981 -0.985 -0.973 -0.94 ...
 $ tGravityAccstdY         : num  -0.988 -0.958 -0.963 -0.972 -0.94 ...
 $ tGravityAccstdZ         : num  -0.984 -0.956 -0.93 -0.972 -0.931 ...
 $ tBodyAccJerkmeanX       : num  0.0826 0.0737 0.0745 0.0618 0.11 ...
 $ tBodyAccJerkmeanY       : num  0.01225 0.00843 0.00741 0.01825 -0.00328 ...
 $ tBodyAccJerkmeanZ       : num  -0.0018 0.00441 -0.01405 0.0079 -0.02094 ...
 $ tBodyAccJerkstdX        : num  -0.986 -0.986 -0.978 -0.278 0.147 ...
 $ tBodyAccJerkstdY        : num  -0.9832 -0.9744 -0.9629 -0.0166 0.1268 ...
 $ tBodyAccJerkstdZ        : num  -0.988 -0.987 -0.98 -0.586 -0.34 ...
 $ tBodyGyromeanX          : num  -0.0185 -0.0481 -0.0257 -0.053 -0.1159 ...
 $ tBodyGyromeanY          : num  -0.1118 -0.06705 -0.08077 -0.04824 -0.00482 ...
 $ tBodyGyromeanZ          : num  0.1449 0.0553 0.0887 0.0828 0.0972 ...
 $ tBodyGyrostdX           : num  -0.988 -0.984 -0.948 -0.562 -0.321 ...
 $ tBodyGyrostdY           : num  -0.982 -0.977 -0.965 -0.538 -0.416 ...
 $ tBodyGyrostdZ           : num  -0.96 -0.957 -0.951 -0.481 -0.279 ...
 $ tBodyGyroJerkmeanX      : num  -0.102 -0.0923 -0.106 -0.0819 -0.0581 ...
 $ tBodyGyroJerkmeanY      : num  -0.0359 -0.0411 -0.0426 -0.0538 -0.0421 ...
 $ tBodyGyroJerkmeanZ      : num  -0.0702 -0.0423 -0.0553 -0.0515 -0.071 ...
 $ tBodyGyroJerkstdX       : num  -0.993 -0.988 -0.97 -0.39 -0.244 ...
 $ tBodyGyroJerkstdY       : num  -0.99 -0.991 -0.981 -0.634 -0.469 ...
 $ tBodyGyroJerkstdZ       : num  -0.988 -0.985 -0.971 -0.435 -0.218 ...
 $ tBodyAccMagmean         : num  -0.977 -0.967 -0.95 -0.29 0.09 ...
 $ tBodyAccMagstd          : num  -0.973 -0.953 -0.941 -0.423 0.216 ...
 $ tGravityAccMagmean      : num  -0.977 -0.967 -0.95 -0.29 0.09 ...
 $ tGravityAccMagstd       : num  -0.973 -0.953 -0.941 -0.423 0.216 ...
 $ tBodyAccJerkMagmean     : num  -0.98774 -0.985 -0.97574 -0.28142 0.00566 ...
 $ tBodyAccJerkMagstd      : num  -0.986 -0.983 -0.972 -0.164 0.23 ...
 $ tBodyGyroMagmean        : num  -0.95 -0.943 -0.942 -0.447 -0.162 ...
 $ tBodyGyroMagstd         : num  -0.961 -0.958 -0.93 -0.553 -0.275 ...
 $ tBodyGyroJerkMagmean    : num  -0.992 -0.99 -0.979 -0.548 -0.411 ...
 $ tBodyGyroJerkMagstd     : num  -0.99 -0.989 -0.974 -0.558 -0.343 ...
 $ fBodyAccmeanX           : num  -0.977 -0.986 -0.981 -0.346 0.113 ...
 $ fBodyAccmeanY           : num  -0.9798 -0.9558 -0.9436 -0.0219 0.2783 ...
 $ fBodyAccmeanZ           : num  -0.984 -0.97 -0.951 -0.454 -0.131 ...
 $ fBodyAccstdX            : num  -0.9732 -0.9873 -0.9871 -0.4577 0.0161 ...
 $ fBodyAccstdY            : num  -0.981 -0.948 -0.936 -0.169 0.172 ...
 $ fBodyAccstdZ            : num  -0.985 -0.956 -0.925 -0.455 -0.162 ...
 $ fBodyAccJerkmeanX       : num  -0.986 -0.986 -0.978 -0.305 0.138 ...
 $ fBodyAccJerkmeanY       : num  -0.9828 -0.9738 -0.9625 -0.0788 0.0962 ...
 $ fBodyAccJerkmeanZ       : num  -0.986 -0.985 -0.976 -0.555 -0.271 ...
 $ fBodyAccJerkstdX        : num  -0.987 -0.988 -0.981 -0.314 0.05 ...
 $ fBodyAccJerkstdY        : num  -0.985 -0.9771 -0.9663 -0.0153 0.0808 ...
 $ fBodyAccJerkstdZ        : num  -0.989 -0.988 -0.982 -0.616 -0.408 ...
 $ fBodyGyromeanX          : num  -0.986 -0.98 -0.943 -0.43 -0.146 ...
 $ fBodyGyromeanY          : num  -0.983 -0.981 -0.968 -0.555 -0.362 ...
 $ fBodyGyromeanZ          : num  -0.9627 -0.9575 -0.9495 -0.3967 -0.0875 ...
 $ fBodyGyrostdX           : num  -0.989 -0.985 -0.95 -0.604 -0.379 ...
 $ fBodyGyrostdY           : num  -0.982 -0.975 -0.964 -0.533 -0.459 ...
 $ fBodyGyrostdZ           : num  -0.963 -0.961 -0.956 -0.56 -0.423 ...
 $ fBodyAccMagmean         : num  -0.975 -0.962 -0.952 -0.324 0.293 ...
 $ fBodyAccMagstd          : num  -0.9751 -0.9553 -0.944 -0.5771 -0.0215 ...
 $ fBodyBodyAccJerkMagmean : num  -0.985 -0.982 -0.972 -0.169 0.222 ...
 $ fBodyBodyAccJerkMagstd  : num  -0.985 -0.982 -0.971 -0.164 0.227 ...
 $ fBodyBodyGyroMagmean    : num  -0.972 -0.97 -0.945 -0.531 -0.321 ...
 $ fBodyBodyGyroMagstd     : num  -0.961 -0.958 -0.932 -0.652 -0.373 ...
 $ fBodyBodyGyroJerkMagmean: num  -0.99 -0.989 -0.975 -0.583 -0.38 ...
 $ fBodyBodyGyroJerkMagstd : num  -0.989 -0.989 -0.975 -0.558 -0.344 ...
```

### III. Data Transformations

**Step 1. Merge the training and the test sets to create one data set.**

* Read in test data for __*Data*__ from "X_test.txt", for __*Labels*__ from "y_test.txt", and for __*Subjects*__ from "subject_test.txt"
            
* Read in train data for __*Data*__ from "X_train.txt", for __*Labels*__ from "y_train.txt", and for __*Subjects*__ from "subject_train.txt"

* Merge the test and train __*Data*__ with row combine
      
* Merge the test and train __*Labels*__ with row combine
      
* Merge the test and train __*Subjects*__ with row combine
      
* Create merged dataset for review prior to implementing steps 2 to 4

**Step 2. Extract only the measurements on the mean and standard deviation for each measurement.**

* Read in the features.txt, which includes *mean* and *standard* deviation values.

* Used Wordpad to review features.txt and searched "mean" and "std", switched to "mean()" and "std()" for uniformity, because "std" doesn't have matching long names like "mean"

* Extracted mean and std dev values from features dataset using grep, aka Global[ly search a] Regular Expression [and] Print, for values identified with labels that include "mean()" and "std()".  Using backslash to escape metacharacters "(", ")", and second backslash for escaping metacharacter "\\" itself

      * remove "()"

      * remove dashes

**Step 3. Uses descriptive activity names to name the activities in the data set.**

* Read in activity labels

* Provide headers for activities dataset

**Step 4. Appropriately labels the data set with descriptive variable names.**

* Add descriptive headers to Labels and Subject datasets

* Prepare pre-tidy dataset with column combine

* Save pre-tidy file for review prior to tidy data

**Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.**

* Set up data table for tidyData

      * Calculate the mean of each measurement (each column) by 'Subject' and 'Activity' using `data.table` "Subset Data" function `.SD`
      
* Sort by 'Subject' and 'Activity'

* Write and save "tidyData.txt"
