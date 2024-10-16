## Replication Alemán et al. (2024): Figure 2

rm(list=ls(all=TRUE))

library(tidyverse)
library(tidylog)
library(MASS)

# Load data: ----
# setwd("~/Replications Files/Data")
load("data_rep.Rdata")

# Plot Figure 2: ----
data_rep %>%
  mutate(gender = ifelse(female==1,"Women", "Men")) %>%
  group_by(topics_sp) %>%
  mutate(topics_total=sum(total_sp_leg_type_topic)) %>%
  ungroup() %>%
  group_by(topics_sp,gender) %>%
  mutate(topics_gender=sum(total_sp_leg_type_topic),
         topics_gender_pct = topics_gender/topics_total) %>%
  distinct(topics_sp,gender,topics_gender,topics_gender_pct) %>%
  ungroup() %>%
  filter(gender=="Women") %>%
  ggplot(aes(x=reorder(topics_sp,topics_gender_pct),y=topics_gender_pct)) +
  geom_col(alpha = .75, color = "black") +
  scale_y_continuous(labels = scales::percent,
                     breaks = c(0,.12,.24,1),limits = c(0,.25)) +
  coord_flip() + 
  geom_hline(yintercept = .12 ,lty="dashed", color = "black") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  labs(x="", y = "% of Speeches", color = "", fill = "")

# Save: ----
# setwd("~/Replications Files/Figures")
ggsave(filename = "figure 2.jpeg", h=7,w=7)
