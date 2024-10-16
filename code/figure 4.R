## Replication Alemán et al. (2024): Figure 4

rm(list=ls(all=TRUE))

library(tidyverse)
library(tidylog)
library(MASS)

# Load data: ----
# setwd("~/Replications Files/Data")
load("data_rep.Rdata")

# Get data only on Law and Crime: ----
law_crime_pc <- data_rep %>% 
  filter(topics_sp == "Law and Crime") %>%
  mutate(pc_wom_law = total_sp_leg_type_topic/total_sp_leg_period,
         pc_wom_law2 = total_sp_leg_type_topic2/total_sp_leg_period) %>%
  group_by(female) %>%
  mutate(mean_wom_law = mean(pc_wom_law),
         mean_wom_law2 = mean(pc_wom_law2)) %>%
  ungroup()

# Plot Figure 4a: ----
law_crime_pc %>%
  mutate(gender = ifelse(female ==1, "Women", "Men")) %>%
  ggplot(aes(x=pc_wom_law,fill=gender)) +
  geom_density(alpha=.5) +
  scale_fill_manual(values= wes_palette("Royal1", n = 2)) +
  theme_minimal() +
  geom_vline(aes(xintercept = mean_wom_law,color = gender), linetype="dashed") +
  theme(legend.position = "bottom") +
  scale_color_manual(values= wes_palette("Royal1", n = 2)) +
  labs(x="% of Speeches on Law and Crime", y = "Density", fill = "", color = "")

# setwd("~/Replications Files/Figures")
ggsave(filename = "figure 4a.jpg",w=6,h=4)

# Plot Figure 4b: ----
law_crime_pc %>%
  mutate(gender = ifelse(female ==1, "Women", "Men")) %>%
  ggplot(aes(x=pc_wom_law2,fill=gender)) +
  geom_density(alpha=.5) +
  scale_fill_manual(values= wes_palette("Royal1", n = 2)) +
  theme_minimal() +
  geom_vline(aes(xintercept = mean_wom_law2,color = gender), linetype="dashed") +
  theme(legend.position = "bottom") +
  scale_color_manual(values= wes_palette("Royal1", n = 2)) +
  labs(x="% of Speeches on Law and Crime (no mentions of women issues)", y = "Density", fill = "", color = "")

ggsave(filename = "figure 4b.jpg",w=6,h=4)

