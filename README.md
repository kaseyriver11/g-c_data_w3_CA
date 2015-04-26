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
# 1 and 2 are the subject and activity 
# 3:68 are all mean values for different aspects of the activity and subject

1	Subject - The number of the subject
2	Activity - The way the activity was completed
3	timeBodyAccelerometer-mean()-X 
4	timeBodyAccelerometer-mean()-Y
5	timeBodyAccelerometer-mean()-Z
6	timeBodyAccelerometer-std()-X
7	timeBodyAccelerometer-std()-Y
8	timeBodyAccelerometer-std()-Z
9	timeGravityAccelerometer-mean()-X
10	timeGravityAccelerometer-mean()-Y
11	timeGravityAccelerometer-mean()-Z
12	timeGravityAccelerometer-std()-X
13	timeGravityAccelerometer-std()-Y
14	timeGravityAccelerometer-std()-Z
15	timeBodyAccelerometerJerk-mean()-X
16	timeBodyAccelerometerJerk-mean()-Y
17	timeBodyAccelerometerJerk-mean()-Z
18	timeBodyAccelerometerJerk-std()-X
19	timeBodyAccelerometerJerk-std()-Y
20	timeBodyAccelerometerJerk-std()-Z
21	timeBodyGyroscope-mean()-X
22	timeBodyGyroscope-mean()-Y
23	timeBodyGyroscope-mean()-Z
24	timeBodyGyroscope-std()-X
25	timeBodyGyroscope-std()-Y
26	timeBodyGyroscope-std()-Z
27	timeBodyGyroscopeJerk-mean()-X
28	timeBodyGyroscopeJerk-mean()-Y
29	timeBodyGyroscopeJerk-mean()-Z
30	timeBodyGyroscopeJerk-std()-X
31	timeBodyGyroscopeJerk-std()-Y
32	timeBodyGyroscopeJerk-std()-Z
33	timeBodyAccelerometerMagnitude-mean()
34	timeBodyAccelerometerMagnitude-std()
35	timeGravityAccelerometerMagnitude-mean()
36	timeGravityAccelerometerMagnitude-std()
37	timeBodyAccelerometerJerkMagnitude-mean()
38	timeBodyAccelerometerJerkMagnitude-std()
39	timeBodyGyroscopeMagnitude-mean()
40	timeBodyGyroscopeMagnitude-std()
41	timeBodyGyroscopeJerkMagnitude-mean()
42	timeBodyGyroscopeJerkMagnitude-std()
43	frequencyBodyAccelerometer-mean()-X
44	frequencyBodyAccelerometer-mean()-Y
45	frequencyBodyAccelerometer-mean()-Z
46	frequencyBodyAccelerometer-std()-X
47	frequencyBodyAccelerometer-std()-Y
48	frequencyBodyAccelerometer-std()-Z
49	frequencyBodyAccelerometerJerk-mean()-X
50	frequencyBodyAccelerometerJerk-mean()-Y
51	frequencyBodyAccelerometerJerk-mean()-Z
52	frequencyBodyAccelerometerJerk-std()-X
53	frequencyBodyAccelerometerJerk-std()-Y
54	frequencyBodyAccelerometerJerk-std()-Z
55	frequencyBodyGyroscope-mean()-X
56	frequencyBodyGyroscope-mean()-Y
57	frequencyBodyGyroscope-mean()-Z
58	frequencyBodyGyroscope-std()-X
59	frequencyBodyGyroscope-std()-Y
60	frequencyBodyGyroscope-std()-Z
61	frequencyBodyAccelerometerMagnitude-mean()
62	frequencyBodyAccelerometerMagnitude-std()
63	frequencyBodyAccelerometerJerkMagnitude-mean()
64	frequencyBodyAccelerometerJerkMagnitude-std()
65	frequencyBodyGyroscopeMagnitude-mean()
66	frequencyBodyGyroscopeMagnitude-std()
67	frequencyBodyGyroscopeJerkMagnitude-mean()
68	frequencyBodyGyroscopeJerkMagnitude-std()










