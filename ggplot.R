install.packages("ggplot2")
install.packages("palmerpenguins")
library(ggplot2)
library(palmerpenguins)
data(penguins)
View(penguins)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape=species), color="purple")
#alpha for transparency also works when graph is dense
#size for size
#code in aes tells r how to map aesthetics to veriables
# if we want something universal move it out

#line chart
ggplot(data = penguins) + 
  geom_line(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#can layer multiple charts
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species), method="loess") +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#linetype gives us a seperate line for each value in specified column
#jitter adds some random noise tyo each point to deal with overlapping points
ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#bar chart doesnt need y as it checks count
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut, fill=clarity))
#if fill(inner color) is assigned a different var than the x, it displays a stacked chart instead

#facets
#give each value its own plot
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  facet_wrap(~species)
#when using "~", the var to the left is the dependant var, and the var to the right is the independant var
#in this case the dependant var is the facet_wrap

#if faceting with multiple vars use grid
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  facet_grid(sex~species)
#vertical ~ horizontal

#annotations
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr.Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", color="black",
           fontface = "bold", size=4.5, angle=25)

#can also store plots and add layers
p <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr.Kristen Gorman")
p + annotate("text", x=220, y=3500, label="The Gentoos are the largest", color="black",
             fontface = "bold", size=4.5, angle=25)

#exporting
ggsave("Three Penguin Species.png")
#name followed by file format we want to save as
#saves the last plot made









