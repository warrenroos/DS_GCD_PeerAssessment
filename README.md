# DS_GCD_PeerAssessment
Data Science - Getting and Cleaning Data - Peer Assessment

## ReadMe 

This readme describes the analysis written in R and saved in the R Script file named "run_analysis.R".  

## Prep 

First, I manually downloaded the file per the Assignment from the link provided and referenced 
<a href='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'>here</a>.  

Next, given local machine difficulties (my computer was complaining of "filename length"" issues and "spaces in filenames"" issues), I extracted the files, removed the spaces in the foldernames, and started with the root embedded folder "UCI_HAR_Dataset" for the Data Analysis here.  

Per the Assignment, that while downloading automated is ideal, it was not required for this Assignment.  As such, the above two manual prep steps were performed prior to reading the files into R.  

As such, NO EDITING IN ANY WAY was done to the content of the data files themselves.  

## Read Data 

Each data file was read into R Studio via read.table.  Some of the data files were badly formatted, which did not allow standard CSV processing.  As such, many of the data tables were initially read into R as 1 column, string replaces using "gsub" were used to remove extra spaces, and then the column was split using "separate" into the respective data columns.  From there, column headers were applied for each "feature" dataset (dsta.test.body_gyro_x, etc.). 

## Pre-Process Data 

For matching the non-normalized datasets,  mutliple steps were performed.  First, in the features "table" (data.main.features), a "blank row" was added to match the "blank column" when splitting, or "separating" the feature datasets.  This features table was then applied as the colnames for both the "data.test.x" and the "data.test.y" tables.  

Also, as there was not a "Person" lookup table provided (there were lookup table for activity and column names of features in another lookup table), one was created "data.main.subject".  From there, column headers were applied where appropriate for remaining datasets not updated earlier (like the "Y" tables). Next, the datatypes for this lookup table, "data.main.subject", as well as the "data.main.activity" and "data.main.features" were converted as appropriate (character columns converted to integer if they contained an integer).  

To combine the datasets, a column needed to be added to both the data.train.x and the data.test.x datasets, "TestOrTrain", to define whether they related to either the "Test" or "Train" datasets respectively ("data.train.temp" and "data.test.temp").  This will allow us to horizontally combine the two datasets into one dataset ("data.combo.temp").  

Next, from the new dataset "data.combo.temp", the mean and std dev columns for each feature were extracted using the "melt" command and a "grep" statement to create a "narrow" dataset "data.melt.final", which contains a single row for each feature measurement, whether mean or std dev.  

Lastly, the dataset "data.melt.final" was aggregated by Person, Activity, TestOrTrain (so data was not lost/removed in final dataset), and Feature to create the aggregate dataset "data.aggr.final".  
 