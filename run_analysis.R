# # DS_GCD_PeerAssessment
# Data Science - Getting and Cleaning Data - Peer Assessment

# read in data from files 
data.main.activity <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\activity_labels.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.main.features <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\features.txt", 
  header = FALSE, sep = " ", na.strings = "NA", nrows = 250000
)

data.test.subject <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\subject_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.test.x <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\X_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.test.y <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\y_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.test.body_acc_x <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\inertialSignals\\body_acc_x_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)


data.test.body_acc_y <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\inertialSignals\\body_acc_y_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.test.body_acc_z <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\inertialSignals\\body_acc_z_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.test.body_gyro_x <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\inertialSignals\\body_gyro_x_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)


data.test.body_gyro_y <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\inertialSignals\\body_gyro_y_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.test.body_gyro_z <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\inertialSignals\\body_gyro_z_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)


data.test.total_acc_x <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\inertialSignals\\total_acc_x_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)


data.test.total_acc_y <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\inertialSignals\\total_acc_y_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.test.total_acc_z <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\test\\inertialSignals\\total_acc_z_test.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)


data.train.subject <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\subject_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.train.x <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\X_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.train.y <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\y_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.train.body_acc_x <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\inertialSignals\\body_acc_x_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)


data.train.body_acc_y <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\inertialSignals\\body_acc_y_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.train.body_acc_z <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\inertialSignals\\body_acc_z_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.train.body_gyro_x <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\inertialSignals\\body_gyro_x_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)


data.train.body_gyro_y <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\inertialSignals\\body_gyro_y_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.train.body_gyro_z <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\inertialSignals\\body_gyro_z_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)


data.train.total_acc_x <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\inertialSignals\\total_acc_x_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)


data.train.total_acc_y <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\inertialSignals\\total_acc_y_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

data.train.total_acc_z <- read.table(
  file = "..\\..\\Data\\UCI_HAR_Dataset\\train\\inertialSignals\\total_acc_z_train.txt", 
  header = FALSE, sep = ",", na.strings = "NA", nrows = 250000
)

# determine dimensions of the raw datasets 
# related to attributes / lookups for the observations 
dim(data.train.subject)
dim(data.test.subject)
dim(data.train.y)
dim(data.test.y)
dim(data.main.features)

# determine unique values of the raw datasets 
# related to attributes / lookups for the observations  
unique(data.train.subject)
unique(data.test.subject)
unique(data.train.y)
unique(data.test.y)
unique(data.main.features)

# determine dimensions for the unique values of the raw datasets 
# related to attributes / lookups for the observations  
dim(unique(data.test.subject))
dim(unique(data.train.subject))
dim(unique(data.train.y))
dim(unique(data.test.y))
dim(unique(data.main.features))

# add a blank column to the features dataset prior to using it to match against datacolumns 
data.main.features <- rbind(c(V1 = 0, V2 = "blankColumn"), data.main.features)

# split columns in relevant datasets 
library(stringr)
library(dplyr)
library(tidyr)
library(reshape2)

# split columns for activities 
data.main.activity$prep <- gsub(" ", ",", gsub("  ", " ", data.main.activity$V1))
data.main.activity <- data.main.activity %>% 
  separate(prep, c("activityId", "activityName"), sep = ",")


# split columns for X data - 561 vector of time and frequency domain variables  
data.test.x$prep <- gsub(" ", ",", gsub("  ", " ", data.test.x$V1))
data.test.x <- data.test.x %>% 
  separate(prep, make.names(data.main.features$V2), sep = ",", convert = TRUE)

data.train.x$prep <- gsub(" ", ",", gsub("  ", " ", data.train.x$V1))
data.train.x <- data.train.x %>% 
  separate(prep, make.names(data.main.features$V2), sep = ",", convert = TRUE)



# split columns - 128 observations - Training Dataset 
data.train.body_acc_x$prep <- gsub(" ", ",", gsub("  ", " ", data.train.body_acc_x$V1))
data.train.body_acc_x <- data.train.body_acc_x %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.train.body_acc_y$prep <- gsub(" ", ",", gsub("  ", " ", data.train.body_acc_y$V1))
data.train.body_acc_y <- data.train.body_acc_y %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.train.body_acc_z$prep <- gsub(" ", ",", gsub("  ", " ", data.train.body_acc_z$V1))
data.train.body_acc_z <- data.train.body_acc_z %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.train.body_gyro_x$prep <- gsub(" ", ",", gsub("  ", " ", data.train.body_gyro_x$V1))
data.train.body_gyro_x <- data.train.body_gyro_x %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.train.body_gyro_y$prep <- gsub(" ", ",", gsub("  ", " ", data.train.body_gyro_y$V1))
data.train.body_gyro_y <- data.train.body_gyro_y %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.train.body_gyro_z$prep <- gsub(" ", ",", gsub("  ", " ", data.train.body_gyro_z$V1))
data.train.body_gyro_z <- data.train.body_gyro_z %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.train.total_acc_x$prep <- gsub(" ", ",", gsub("  ", " ", data.train.total_acc_x$V1))
data.train.total_acc_x <- data.train.total_acc_x %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.train.total_acc_y$prep <- gsub(" ", ",", gsub("  ", " ", data.train.total_acc_y$V1))
data.train.total_acc_y <- data.train.total_acc_y %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.train.total_acc_z$prep <- gsub(" ", ",", gsub("  ", " ", data.train.total_acc_z$V1))
data.train.total_acc_z <- data.train.total_acc_z %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)




# split columns - 128 observations - Testing Dataset 
data.test.body_acc_x$prep <- gsub(" ", ",", gsub("  ", " ", data.test.body_acc_x$V1))
data.test.body_acc_x <- data.test.body_acc_x %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.test.body_acc_y$prep <- gsub(" ", ",", gsub("  ", " ", data.test.body_acc_y$V1))
data.test.body_acc_y <- data.test.body_acc_y %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.test.body_acc_z$prep <- gsub(" ", ",", gsub("  ", " ", data.test.body_acc_z$V1))
data.test.body_acc_z <- data.test.body_acc_z %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.test.body_gyro_x$prep <- gsub(" ", ",", gsub("  ", " ", data.test.body_gyro_x$V1))
data.test.body_gyro_x <- data.test.body_gyro_x %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.test.body_gyro_y$prep <- gsub(" ", ",", gsub("  ", " ", data.test.body_gyro_y$V1))
data.test.body_gyro_y <- data.test.body_gyro_y %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.test.body_gyro_z$prep <- gsub(" ", ",", gsub("  ", " ", data.test.body_gyro_z$V1))
data.test.body_gyro_z <- data.test.body_gyro_z %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.test.total_acc_x$prep <- gsub(" ", ",", gsub("  ", " ", data.test.total_acc_x$V1))
data.test.total_acc_x <- data.test.total_acc_x %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.test.total_acc_y$prep <- gsub(" ", ",", gsub("  ", " ", data.test.total_acc_y$V1))
data.test.total_acc_y <- data.test.total_acc_y %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)

data.test.total_acc_z$prep <- gsub(" ", ",", gsub("  ", " ", data.test.total_acc_z$V1))
data.test.total_acc_z <- data.test.total_acc_z %>% 
  separate(prep, 0:128, sep = ",", convert = TRUE)


#data.main.activity.a <- transform(data.main.activity, colsplit(prep, ",", c('a', 'b')))
#data.main.activity.a <- transform(data.main.activity, "Yes")
#select(everything()) %>% 
#filter(PROPDMGEXP %in% c("B")) 

# add appropriate colnames to the datasets 
colnames(data.train.y) = c("activityID")   
colnames(data.test.y) = c("activityID") 
colnames(data.train.subject) = c("personID") 
colnames(data.test.subject) = c("personID") 
colnames(data.train.x)[2] <- c("TestOrTrain")
colnames(data.test.x)[2] <- c("TestOrTrain")
colnames(data.main.features) = c("featureID", "featureName") 

# create lookup table for PersonID / PersonName 
data.main.subject <- cbind(PersonName = c(paste("Person", 1:30)))
data.main.subject <- as.data.frame(data.main.subject)
data.main.subject <- cbind(PersonID = as.integer(1:30), data.main.subject)  
data.main.subject$PersonName <- as.character(data.main.subject$PersonName)

# cleanup some datatypes 
data.main.features$featureID <- as.integer(data.main.features$featureID)
data.main.activity$activityId <- as.integer(data.main.activity$activityId)
data.train.x$TestOrTrain <- as.character(data.train.x$TestOrTrain)
data.test.x$TestOrTrain <- as.character(data.test.x$TestOrTrain)

# assign values to the TestOrTrain column to designate the 
#   originating dataset prior to combining datasets 
data.test.x$TestOrTrain <- c("test")
data.train.x$TestOrTrain <- c("train")

# combine the columns related to Subject (Person) and Y (Activity) 
data.test.temp <- cbind(data.test.subject, data.test.y, data.test.x)
data.train.temp <- cbind(data.train.subject, data.train.y, data.train.x)

# combine the rows for the train and test datasets 
data.combo.temp <- rbind(data.train.temp, data.test.temp)

#   melt() the dataset to create in essence key-value pairs for the feature values 
data.melt.final <- melt(data.combo.temp, id=c("personID", "activityID", "TestOrTrain"), variable.name = "featureName", measure.vars = grep("mean|std", colnames(data.combo.temp), value = TRUE))

write.table(data.melt.final, file = "data.melt.final.txt", row.names = FALSE)
