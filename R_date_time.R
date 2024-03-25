#time formats in R
dates <- ymd("2016-08-16")
dates2 <- mdy("January 20th, 2021")
dates3 <- dmy("20-Jan-2021")
dates4 <- ymd(20210120)
time <- ("20:11:59 UTC")
date_time <- ("2018-03-31 18:15:48 UTC")
date_time2 <- ymd_hms("2021-01-20 20:11:59")
date_time3 <- mdy_hm("01/20/2021 08:01")

#conversion to date
as_date(now())

todays_date <- today()
current_date_time <- now()