##Getting and Cleaning Data Project

###Overview
This project creates a tidy data file called tidysummary.txt from the source data files. 
All code is contained in the source file run_analysis.R. 
Guidance was taken from "David's Course Project FAQ" thread on the discussion board. 

###Column selection and naming strategy
I chose to select all of the columns that contained mean and standard deviation data, 
with the exception of the frequency data and the angular data. This resulted in 66 columns 
of measurements. 
I took the following steps to create shorter, more developer friendly labels. 
* The first character was either "t" (for time) or "f" (for Fast Fourier Transform). 
Since the majority of the measurements were "t", I chose to drop the "t". For the "f" 
measurements, I used the more descriptive "fft". 
* Most measurements were "Body" measurements. I chose to drop this as well. In the case
where it was not a "Body" measurement, I kept the "Gravity" indication intact.
* I removed the special characters, taking the advice given in the lecture. 
* I also made everything lowercase, also suggested in the lecture.
I then selected all of the pertinent columns through a series of grep commands and 
stored the result in an integer vector called "keeptags"to be used as an index to select 
the desired columns. 

###File strategy
All files were loaded into data frames in RStudio to do analysis on the contents. 
Once the relationships between the files was understood, I took the following approach.
* Activities - I used the activity_labels.txt file as a base to create activity
descriptions. I manipulated that data to create labels for "laying", "sitting",
"standing", "walking", "walking up" and "walking down". These labels remained in the 
data frame to be used later. 
* Labels - I used features.txt file as the base for the label modifications described 
above. 

All test data was manipulated to produce the desired data frame before being combined
with the training data. The same approach was taken with the training data. Here are 
the steps for both test and training data. 
* The subject-xxxx.txt was used as the anchor for the new data frame. 
* The activity column was added by using the activity code from the Y-xxxx.txt as an index 
into the activity data frame to select the newly created activity values.
* When the X data was loaded into a data frame, the labels data frame was used as the 
column names.
* A subset of the X data was selected using the "keeptags" vector descried above.
* The X data was then added using cbind. 

Once these steps were completed for both test and training data, they were combined using
rbind. 

The data was then summarized using the aggregate function.

The resulting data frame was written to a comma delimited text file. 

###Ways the data was made tidy

* I chose a wide strategy to summarize the data. This means all values were by subject and
activity. This resulted in 180 rows of data (30 subjects * 6 activities). 
* The activities were changed from a code to a descriptive string.
* The labels were changed to conform to standards suggested in the lectures.
* The output was produced as a comma delimited file so it could be viewed in Excel. Note 
that the project site does not support .csv files so the file has a .txt extension. 

