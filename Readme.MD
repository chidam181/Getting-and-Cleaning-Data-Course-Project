# Given Tasks:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Apart from this, 
1. A Code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
2. A README.md in the repo with your scripts is included 
3. The actual R code

# Working of the code
- The code solves the tasks in a step by step manner as described in the tasks. The data is downloaded and unzipped into the working directory.
- Using the unzipped data we can see the file structure. Two folder called train and test. Other text files like labels, features present in the main folder.
- The output is also written in this folder as finaldata.txt.
- The code first reads the files from these different folders and merges them together. 
- Gets the mean & SD also excluding the other unwanted data.
- Reads the labels and names the activities.
- Finally write the tidy data file, removing the quotes and the headings.
