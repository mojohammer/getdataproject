##Data Dictionary for tidysummary.txt file. 

###Overview
The file is a comma separated file.
Note that several columns represent values in an x, y, or z direction. These columns are
grouped together in the following descriptions. For example, accmeanx, accmeany and
accmeanz will be shown as accmeanx,y,z.
Columns 3-42 are time measurements. 
Columns 43-68 are Fast Fourier Transform (FFT) measurements. 

1       subject
            numeric value of anonymous subject 1..30
2       activity
            character value denoting activity
            "laying"
            "sitting"
            "standing"
            "walking"
            "walking down"
            "walking up"
3-5     accmeanx,y,z
            mean of the X data tBodyAcc-mean-X,Y,Z (columns 1-3 in X data)
6-8     accstdx,y,z
            mean of the X data tBodyAcc-std-X,Y,Z (columns 4-6 in X data)
9-11    gravityaccmeanx,y,z
            mean of the X data tGravityAcc-mean-X,Y,Z (columns 41-43 in X data)
12-14   gravityaccstdx,y,z
            mean of the X data tGravityAcc-std-X,Y,Z (columns 44-46 in X data)
15-17   accjerkmeanx,y,z
            mean of the X data tBodyAccJerk-mean-X,Y,Z (columns 81-83 in X data)
18-20   accjerkstdx,y,z
            mean of the X data tBodyAccJerk-std-X,Y,Z (columns 84-86 in X data)
21-23   gyromeanx,y,z
            mean of the X data tBodyGyro-mean-X,Y,Z (columns 121-123 in X data)
24-26   gyrostdx,y,z
            mean of the X data tBodyGyro-std-X,Y,Z (columns 124-126 in X data)
27-29   gyrojerkmeanx,y,z
            mean of the X data tBodyGyroJerk-mean-X,Y,Z (columns 161-163 in X data)
30-32   gyrojerkmstdx,y,z
            mean of the X data tBodyGyroJerk-std-X,Y,Z (columns 164-166 in X data)
33      accmagmean
            mean of the X data tBodyAccMag-mean (column 201 in X data)
34      accmagstd
            mean of the X data tBodyAccMag-std (column 202 in X data)
35      gravityaccmagmean
            mean of the X data tGravityAccMag-mean (column 214 in X data)
36      gravityaccmagstd
            mean of the X data tGravityAccMag-std (column 215 in X data)
37      accjerkmagmean
            mean of the X data tBodyAccJerkMag-mean (column 227 in X data)
38      accjerkmagstd
            mean of the X data tBodyAccJerkMag-std (column 228 in X data)
39      gyromagmean
            mean of the X data tBodyGyroMag-mean (column 240 in X data)
40      gyromagstd
            mean of the X data tBodyGyroMag-std (column 241 in X data)
41      gyrojerkmagmean
            mean of the X data tBodyGyroJerkMag-mean (column 253 in X data)
42      gyrojerkmagstd
            mean of the X data tBodyGyroJerkMag-std (column 254 in X data)
43-45   fftaccmeanx,y,z
            mean of the X data fBodyAcc-mean-X,Y,Z (columns 266-268 in X data)
46-48   fftaccstdx,y,z
            mean of the X data fBodyAcc-std-X,Y,Z (columns 269-271 in X data)
49-51   fftaccjerkmeanx,y,z
            mean of the X data fBodyAccJerk-mean-X,Y,Z (columns 345-347 in X data)
52-54   fftaccjerkstdx,y,z
            mean of the X data fBodyAccJerk-std-X,Y,Z (columns 348-350 in X data)
55-57   fftgyromeanx,y,z
            mean of the X data fBodyGyro-mean-X,Y,Z (columns 424-426 in X data)
58-60   fftgyrostdx,y,z
            mean of the X data fBodyGyro-std-X,Y,Z (columns 427-429 in X data)
61      fftaccmagmean
            mean of the X data fBodyAccMag-mean (column 503 in X data)
62      fftaccmagstd
            mean of the X data fBodyAccMag-std (column 504 in X data)
63      fftaccjerkmagmean
            mean of the X data fBodyAccJerkMag-mean (column 516 in X data)
64      fftaccjerkmagstd
            mean of the X data fBodyAccJerkMag-std (column 517 in X data)
65      fftgyromagmean
            mean of the X data fBodyGyroMag-mean (column 529 in X data)
66      fftgyromagstd
            mean of the X data fBodyGyroMag-std (column 530 in X data)
67      fftgyrojerkmagmean
            mean of the X data fBodyGyroJerkMag-mean (column 542 in X data)
68      fftgyrojerkmagstd
            mean of the X data fBodyGyroJerkMag-std (column 543 in X data)

