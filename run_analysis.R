library(dplyr)
library(data.table)

features <- fread("features.txt")
colnames(features) <- c("id","measure")

activities <- fread("activity_labels.txt")
colnames(activities) <- c("id","activity")

## read test and train data into memory.  LaF is very fast
library(LaF)
laf <- laf_open_fwf("X_test.txt", column_widths = rep.int(16,561), column_types=rep("double",561))
tests <- laf[,] ## or read.table
laf <- laf_open_fwf("X_train.txt", column_widths = rep.int(16,561), column_types=rep("double",561))
trains <- laf[,] ## or read.table


# pull out features that have mean or std()
cols <- sort(c(grep("mean",features$measure),grep("std",features$measure)))
tests <- select(tests,num_range(prefix="V",range = cols))
trains <- select(trains,num_range(prefix="V",range = cols))

# rename the columns
filtColNames <- slice(features,cols)
colnames(tests) <- c(filtColNames$measure)
colnames(trains) <- c(filtColNames$measure)

# get activities, join to the y text files to lookup activity
testActs <- fread("y_test.txt")
colnames(testActs) <- "id"
trainActs <- fread("y_train.txt")
colnames(trainActs) <- "id"

tests <- cbind(testActs,tests)
tests <- left_join(tests,activities)
## reorder to put activity first, then remove the id column
tests <- select(tests,c(ncol(tests),1:(ncol(tests)-1)),-id)

trains <- cbind(trainActs,trains)
trains <- left_join(trains,activities)
## reorder to put activity first, then remove the id column
trains <- select(trains,c(ncol(trains),1:(ncol(trains)-1)),-id)  

## combine the two data sets
tot <- rbind(tests,trains)

## take the average of each column grouping by activity
totAvg <- tot %>%
          group_by(activity) %>%
          summarise_each(funs(mean))

write.table(totAvg, file="avgs.txt", row.names = F)