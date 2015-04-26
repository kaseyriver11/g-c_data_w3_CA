# g-c_data_w3_CA
# Getting_Cleaning_Assignment

# The file run_analysis.R will download the zip file with the data we are looking at.
# It will put this in a folder called 'data' if the user does not already have this folder created in the WD
# You do not need to have the data already downloaded as this code will do it for you
# If you do have the files downloaded, the code will still work

### Part 1
# We start by reading all of the files we need to answer the question
# Labeling each one with a unique yet suttle name
# We then use rbind() to merge the data sets, and names() to properly name the columns
# cbind() will combine the mergers we have to create a final data set called data

### Part 2
# We use the grep() function to search for column names with 'mean' or 'std'
# And then subset the data using the column names Subject, Activity, and use_names

### Part 3
# Here we use the activity labels text file to get the activity labels names
# The function revalue() from the plyr package is used to change the column
# activity, from an integer, to the corresponding activity name

### Part 4
# Here I wasn't sure what the question was asking, but I did find someone online who had completed this already
# Using the function bsub() we replaced the less descriptive column names with better ones

### Part 5
# Finally we subset the data and use aggregate() to get the mean for each column
# write.table() will produce the output that is desired. 


##### THE CODE BOOK
# There are 3 types of columns in "tidydata.txt"
# "S









