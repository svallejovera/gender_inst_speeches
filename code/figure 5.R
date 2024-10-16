## Replication Alemán et al. (2024): Figure 5

rm(list=ls(all=TRUE))

library(tidyverse)
library(tidylog)
library(MASS)

# Load data: ----
# setwd("~/Replications Files/Data")
load("data_rep.Rdata")

## Get data on speeches mentioning women issues: ----
women_speeches <- data_rep %>%
  mutate(gender = ifelse(female==1,"Women", "Men")) %>%
  # Any topic works:
  filter(topics_sp == "Agriculture") %>%
  mutate(total_mentions_NO_muj = total_sp_leg_period - total_mentions_muj)

# Estimate models for Figure 5: ----

## Model mentioning women: ----
model_women_orden <- glm.nb((total_mentions_muj)~  gender + coalition+tenure+lndist+porcRural+margenlist+mesa+ membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31+total_sp_leg_period+factor(period2), # family = quasibinomial(link = logit), 
                            data = women_speeches)
summary(model_women_orden)
coefs_temp <- plot_model(model_women_orden)
coef_women <- cbind.data.frame(coefs_temp$data$term,coefs_temp$data$estimate,coefs_temp$data$conf.low,coefs_temp$data$conf.high,coefs_temp$data$p.value,"Women-Related Speeches")
colnames(coef_women)[6] <- "speeches"

## Model NOT mentioning women: ----
model_NOwomen_orden <- glm.nb((total_mentions_NO_muj) ~ gender + coalition+tenure+lndist+porcRural+margenlist+mesa+ membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31+total_sp_leg_period+factor(period2), # family = quasibinomial(link = logit), 
                              data = women_speeches)
summary(model_NOwomen_orden)
coefs_temp <- plot_model(model_NOwomen_orden)
coef_NOwomen <- cbind.data.frame(coefs_temp$data$term,coefs_temp$data$estimate,coefs_temp$data$conf.low,coefs_temp$data$conf.high,coefs_temp$data$p.value,"Non Women-Related Speeches")
colnames(coef_NOwomen)[6] <- "speeches"

## Bind both data and add variables: ----
coefs_all <- rbind.data.frame(coef_women,coef_NOwomen)
colnames(coefs_all) <- c("terms","estimate","conf.low","conf.high","p.value",'speeches')

coefs_all$sig <- ifelse(coefs_all$p.value<0.05,1,0)
coefs_all$sig <- as.factor(coefs_all$sig)

# Plot Figure 5: ----
coefs_all %>%
  filter(terms=="genderWomen") %>% 
  ggplot(aes(x=speeches, y=estimate, color = sig)) +
  geom_point() +
  geom_errorbar(aes(ymin = conf.low, ymax = conf.high), width = 0.2) +
  scale_colour_manual(values= wes_palette("Royal1", n = 2)) +
  scale_x_reordered() +
  ylim(c(0,3)) +
  geom_hline(yintercept = 1 ,lty="dashed", color = "grey") +
  theme_minimal() +
  theme(legend.position = "none") +
  labs(x="", y = "Odds Ratios", color = "Model", shape = "Model",
       title = "")

# setwd("~/Replications Files/Figures")
ggsave(filename = "figure 5.jpg",w=6,h=4)
