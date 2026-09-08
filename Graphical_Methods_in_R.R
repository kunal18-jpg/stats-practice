#Bar Chart                                   
fruits <- c("Apple","Banana","Mango","Apple","Mango","Mango")
barplot(table(fruits), 
        main = "Fruit Preference", 
        xlab = "Fruit", ylab = "Frequency",
        col = c("pink","red","yellow"))

#Bar Chart (Grouped)
freq<- c(5, 3, 7)
names(freq) <- c("Apple", "Banana", "Mango")
barplot(frequency,
        main = "Fruit Preference",
        xlab = "Fruit",
        ylab = "Frequency",
        col = c("grey", "red", "yellow"))

#Pie Chart 
pie(table(fruits), main = "Fruit Preference", col = rainbow(3))

#Pie char (frequency already chosen )
freq <- c(5, 3, 7)
names(freq) <- c("Apple", "Banana", "Mango")
pie(freq,
    main = "Fruit Preference",
    col = c("red", "blue", "green"))

#Pie chart (without names() )
pie(c(5, 3, 7),
    labels = c("Apple", "Banana", "Mango"),
    main = "Fruit Preference",
    col = c("red", "yellow", "pink"))

# To show percentage 
freq <- c(2, 1, 3)
names(freq) <- c("Apple", "Banana", "Mango")
percent <- round(freq / sum(freq) * 100, 1)
labels <- paste(names(freq), percent, "%")
pie(freq,
    labels = labels,
    main = "Fruit Preference",
    col = c("red", "pink", "skyblue"),
    border = c("red", "pink", "skyblue"))

#
freq <- c(5, 3, 7)
names(freq) <- c("Apple", "Banana", "Mango")
pie(freq,
    main = "Fruit Preference",
    labels = names(freq),
    col = rainbow(length(freq)))

#Histogram 
marks <- c(45,67,23,89,90,12,34,56,78,90,23,45)
hist(marks, 
     main = "Marks Distribution", 
     xlab = "Marks", 
     ylab = "Frequency",
     col =c("red", "blue", "green", "yellow", "purple"),
     breaks = 6)
#Histogram(to automatically create colours)
marks <- c(45,67,23,89,90,12,34,56,78,90,23,45)
h <- hist(marks, plot = FALSE)
length(h$counts)
hist(marks,
     main = "Distribution of Marks",
     xlab = "Marks",
     ylab = "Frequency",
     col = rainbow(length(h$counts)))
#
marks <- c(45,67,23,89,90,12,34,56,78,90,23,45)
hist(marks,
     breaks = c(10,20,30,40,50,60,70,80,90),
     main = "Distribution of Marks",
     xlab = "Marks",
     ylab = "Frequency",
     col = "pink",
     border = "red")
 
marks <- c(45,67,23,89,90,12,34,56,78,90,23,45)
hist(marks,
     freq = TRUE,
     ylab = "Frequency")
#Line Chart
years <- c(2019,2020,2021,2022,2023)
sales <- c(100,120,90,150,180)
plot(years, sales, 
     type = "l", col = "blue", 
     main = "Sales Trend", xlab = "Year", ylab = "Sales")
# Points and a line 
years <- c(2019,2020,2021,2022,2023)
sales <- c(100,120,90,150,180)
plot(years, sales, 
     type = "o", 
     main = "Sales Trend", xlab = "Year", ylab = "Sales")
# multiple coloured lines
day <- c(1, 2, 3, 4, 5)
classA <- c(20, 25, 18, 30, 28)
classB <- c(15, 22, 20, 28, 32)
plot(day, classA,
     type = "o",
     col = "red",
     main = "Class Attendance",
     xlab = "Day",
     ylab = "Students")
lines(day, classB,
      type = "o",
      col = "blue")
#TO identify lines 
day <- c(1, 2, 3, 4, 5)
classA <- c(20, 25, 18, 30, 28)
classB <- c(15, 22, 20, 28, 32)
plot(day, classA,
     type = "o",
     col = "red",
     main = "Class Attendance",
     xlab = "Day",
     ylab = "Students")
lines(day, classB,
      type = "o",
      col = "blue")
legend("topleft",
       legend = c("Class A", "Class B"),
       col = c("red", "blue"),
       lty = 1,
       pch = 1)

## Scatter Plot
hours <- c(2, 3, 4, 5, 6, 7)
marks <- c(45, 50, 55, 65, 70, 78)
plot(hours, marks,
     main = "Study Hours vs Marks",
     xlab = "Hours Studied",
     ylab = "Marks",
     col = "red",
     cex=1.5)
 
# To addd a regression line
hours <- c(2, 3, 4, 5, 6, 7)
marks <- c(45, 50, 55, 65, 70, 78)
plot(hours, marks,
     pch = 16,
     col = "blue",
     main = "Study Hours vs Marks",
     xlab = "Hours Studied",
     ylab = "Marks")
abline(lm(marks ~ hours),
       col = "red")
legend("topleft",
       legend = c("Group A", "Group B"),
       col = c("red", "blue"),
       pch = 16)

# Diifernt Group (different colour)
hours <- c(2, 3, 4, 5, 6, 7)
marks <- c(45, 50, 55, 65, 70, 78)
group <- c("A", "A", "A", "B", "B", "B")
colours <- ifelse(group == "A", "red", "blue")
plot(hours, marks,
     col = colours,
     pch = 16,
     main = "Study Hours vs Marks",
     xlab = "Hours Studied",
     ylab = "Marks")
legend("topleft",
       legend = c("Group A", "Group B"),
       col = c("red", "blue"),
       pch = 16)
grid()

#Box Plot
marks <- c(45, 50, 52, 55, 58, 60, 62, 65, 70, 75)
boxplot(marks,
        col = "skyblue",
        main = "Distribution of Marks",
        ylab = "Marks")
#different colours in a box plot
classA <- c(45, 50, 55, 60, 65)
classB <- c(50, 55, 60, 70, 75)
classC <- c(40, 48, 52, 58, 62)
boxplot(classA, classB, classC,
        names = c("Class A", "Class B", "Class C"),
        col = c("red", "blue", "green"),
        main = "Class-wise Marks",
        xlab = "Class",
        ylab = "Marks")

#When frequency table represents specific observed values
marks <- c(rep(10, 2),rep(20, 3),rep(30, 4),rep(40, 2))
boxplot(marks,
        col = "skyblue",
        main = "Box Plot",
        ylab = "Marks")

# Horizontal Box Plot
marks <- c(45, 48, 50, 52, 55, 58, 60, 62, 95)
boxplot(marks,
        col = "skyblue",
        outcol = "black",
        border = "red",
        horizontal = TRUE,
        main = "Distribution of Marks",
        ylab = "Marks")
