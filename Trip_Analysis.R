#install and load package
install.packages("tidyverse")
library("tidyverse")

#set path
getwd()
setwd("your path where csv files are save")

#create individual dataframes for each csv files
df_202201 <-read_csv("202201-divvy-tripdata.csv")
df_202202 <-read_csv("202202-divvy-tripdata.csv")
df_202203 <-read_csv("202203-divvy-tripdata.csv")
df_202204 <-read_csv("202204-divvy-tripdata.csv")
df_202205 <-read_csv("202205-divvy-tripdata.csv")
df_202206 <-read_csv("202206-divvy-tripdata.csv")
df_202207 <-read_csv("202207-divvy-tripdata.csv")
df_202208 <-read_csv("202208-divvy-tripdata.csv")
df_202209 <-read_csv("202209-divvy-tripdata.csv")
df_202210 <-read_csv("202210-divvy-tripdata.csv")
df_202211 <-read_csv("202211-divvy-tripdata.csv")
df_202212 <-read_csv("202212-divvy-tripdata.csv")

#merge all dataframes into 1
df_tripdata <- bind_rows(df_202201,df_202202,df_202203,df_202204,df_202205,df_202206,df_202207,df_202208,df_202209,df_202210,df_202211,df_202212)

#calculate the difference between start time and end time by adding column ride_length
df_tripdata$ride_length <-difftime(df_tripdata$ended_at,df_tripdata$started_at,units="mins")

#round the ride length upto one decimal digit
df_tripdata$ride_length <-round(df_tripdata$ride_length,digits=1)

#create column for date, month, day, year and day_of_column
df_tripdata$date<- as.Date(df_tripdata$started_at)
df_tripdata$month<-format(as.Date(df_tripdata$date),"%m")
df_tripdata$day<-format(as.Date(df_tripdata$date),"%d")
df_tripdata$year<-format(as.Date(df_tripdata$date),"%Y")
df_tripdata$day_of_week<-format(as.Date(df_tripdata$date),"%A")

#data cleaning

#removing unnecessary rows
df_tripdata <- df_tripdata %>% select(-c(start_station_name,end_station_name,start_station_id,end_station_id,start_lat,start_lng,end_lat,end_lng))

#view the column names
colnames(df_tripdata)

#remove the rows with na values
df_tripdata<-na.omit(df_tripdata)

#remove duplicates
df_tripdata<-df_tripdata[!duplicated(df_tripdata$ride_id),]

#remove rows with negative or 0 ride_length
df_tripdata<-df_tripdata[!(df_tripdata$ride_length <=0),]

#fix the order of days in week
df_tripdata$day_of_week <- ordered(df_tripdata$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

#calculate the mean, mediann, max and min for ride_length
mean(df_tripdata$ride_length)
median(df_tripdata$ride_length)
max(df_tripdata$ride_length)
min(df_tripdata$ride_length)

#compare members and casual riders
aggregate(df_tripdata$ride_length ~df_tripdata$member_casual,FUN=mean)
aggregate(df_tripdata$ride_length ~df_tripdata$member_casual,FUN=median)
aggregate(df_tripdata$ride_length ~df_tripdata$member_casual,FUN=max)
aggregate(df_tripdata$ride_length ~df_tripdata$member_casual,FUN=min)

#average ride_length for casual and members
aggregate(df_tripdata$ride_length~df_tripdata$member_casual+df_tripdata$day_of_week,FUN=mean)

#analyze ridership data by type and weekday
df_tripdata %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>%  
  group_by(member_casual, weekday) %>%  
  summarise(number_of_rides = n()							 
  ,average_duration = mean(ride_length)) %>% 		
  arrange(member_casual, weekday)	
  
 #visualize number of riders by riderstype
 df_tripdata %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>% 
  group_by(member_casual, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(member_casual, weekday)  %>% 
  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +
  geom_col(position = "dodge")
  
 #visualize average duration for casual and members for each day
 df_tripdata %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>% 
  group_by(member_casual, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(member_casual, weekday)  %>% 
  ggplot(aes(x = weekday, y = average_duration, fill = member_casual)) +
  geom_col(position = "dodge")
  
 # export the file for further visualization
 counts <- aggregate(df_tripdata$ride_length ~ df_tripdata$member_casual + df_tripdata$day_of_week, FUN = mean)
 write.csv(counts,file="path to save the file/filename.csv")





