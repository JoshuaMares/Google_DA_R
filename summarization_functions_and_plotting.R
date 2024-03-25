library(Tmisc)
data(quartet)
View(quartet)

#summarization stats are all about the same
quartet %>% 
  group_by(set) %>% 
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

#when we actually look at the data we see its completely different
ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(~set)

library("datasauRus")
ggplot(datasauRus_dozen, aes(x=x,y=y, colour=dataset)) + geom_point() + themes_void() + theme(legend.position = "none") + facet_wrap(~dataset,ncol=3)