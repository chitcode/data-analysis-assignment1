# Assignment 1




##############################################################
#loading data from the rda file, this loads the object loansData

load("data/raw_data/loansData.rda",)

#initial look into data
objects()
dim(loansData)
names(loansData)
head(loansData)

#any missing values
table(is.na(loansData))
# there are 7 records having NA
NA_records <- loansData[is.na(loansData),]
NA_records
#There is complete missing of data and can be safely removed from the original dataset
cleanData <- na.omit(loansData)
#confimring missing values
table(is.na(cleanData))