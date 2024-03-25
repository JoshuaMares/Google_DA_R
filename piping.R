#piping
data("ToothGrowth")
View(ToothGrowth)

#with vars
filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)
arrange(filtered_tg, len)

#with nesting
arrange(filter(ToothGrowth, dose==0.5))

#with piping
#ctrl+shift+m is shortcut for pipe
#compute average toothlength for each supplement when dosage was .5
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>%                       #only interested when dose is .5
  group_by(supp) %>%                          #group by the supplement
  summarize(mean_len = mean(len, na.rm = T), .group="drop")