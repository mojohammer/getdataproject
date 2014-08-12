#####
#  Program - run_analysys.R
#  This program provides the solution to the project in the Getting and Cleaning Data class. 
#  Comments are to document this code. For more info, refer to the README.md file. 
#  For more info on the output of this program, see the run book for this project. 
#####

# This is the working directory on my machine. It may need to be changed to use this program on a different machine. 
# All data for this project is in a /data directory in this working directory. 
setwd("~/Documents/R Source and Data Files")

# The following files are used in this program
subjTest <- "./data/UCI HAR Dataset/test/subject_test.txt"
XTest <- "./data/UCI HAR Dataset/test/X_test.txt"
YTest <- "./data/UCI HAR Dataset/test/Y_test.txt"
subjTrain <- "./data/UCI HAR Dataset/train/subject_train.txt"
XTrain <- "./data/UCI HAR Dataset/train/X_train.txt"
YTrain <- "./data/UCI HAR Dataset/train/Y_train.txt"
labels <- "./data/UCI HAR Dataset/features.txt"
actlabels <- "./data/UCI HAR Dataset/activity_labels.txt"
output <- "./data/tidysummary.txt"

# acts contains the activities (i.e WALKING)
# Make activities more readable
# - Change UPSTAIRS and DOWNSTAIRS to UP and DOWN
# - Replace _ with space
# - Use all lowercase
acts <- read.table(actlabels, col.names=c("num", "act"))
acts$act <- sub("STAIRS","",acts$act)
acts$act <- sub("_"," ",acts$act)
acts$act <- sub("STAIRS","",acts$act)
acts$act <- tolower(acts$act)

# tags contains the labels for the X data
# Change tags to be friendly
# - Remove special characters
# - Remove "t" and "Body" portions
# - Change "f" to "fft"
# - Change the "Mean)" tags so they are not picked up later.
# - Make all lowercase
tags <- read.table(labels, col.names=c("num", "tag"))
tags$tag <- sub("\\()","",tags$tag, )
tags$tag <- gsub("-","",tags$tag, )
tags$tag <- sub("tBody","",tags$tag, )
tags$tag <- sub("tGravity","Gravity",tags$tag, )
tags$tag <- sub("fBody","fft",tags$tag, )
tags$tag <- sub("Body","",tags$tag, )
tags$tag <- gsub("Mean)","xxxx",tags$tag, )
tags$tag <- tolower(tags$tag)

# Determine tags to keep
# Keep the "mean." tags (i.e. meanx, meany, meanz)
# Keep the mean tags that end with mean
# Keep all "std" tags
keepmean1 <- grep("mean.$", tags$tag)
keepmean2 <- grep("mean$", tags$tag)
keepmean <- union(keepmean1, keepmean2)
keepstd <- grep("std", tags$tag)
keeptags <- union(keepmean, keepstd)
keeptags <- sort(keeptags)

# Read test files
# - apply tags to the X data
# - subset the X data based on the keeptags from above
st <- read.table(subjTest, col.names="subject")
xt <- read.table(XTest,col.names=tags$tag)
xt <- xt[ ,keeptags]
yt <- read.table(YTest, col.names="actcode")

# Combine test data, using subject as the base. Add the activity label from acts(using actcode from Y as the index), then add all X data
st$activity <- acts$act[yt$actcode]
test <- cbind(st,xt)

# Read training files using same pattern as test data
str <- read.table(subjTrain, col.names="subject" )
xtr <- read.table(XTrain,col.names=tags$tag)
xtr <- xtr[ ,keeptags]
ytr <- read.table(YTrain, col.names="actcode")

# Combine test data, using subject as the base. Add the activity label from acts(using actcode from Y as the index), then add all X data
str$activity <- acts$act[ytr$actcode]
train <- cbind(str,xtr)

# Combine test and training 
all <- rbind(test, train)

# Create aggregate data and order by subject then activity
agg <- aggregate(. ~ subject + activity, data = all, FUN=mean)
agg <- agg[order(agg$subject, agg$activity), ]

# Write output as a .csv file. Note file name contains .txt because of the limitation of uploading the file for peer review. 
write.table(agg, file=output, row.names=FALSE, col.names=TRUE, sep=",")
