## Replication Alemán et al. (2024): Figure 3

rm(list=ls(all=TRUE))

library(tidyverse)
library(tidylog)
library(MASS)
library(sjPlot)

# Load data: ----
# setwd("~/Replications Files/Data")
load("data_rep.Rdata")

# Estimate Models for Figure 3: ----

## Run one model for each topic: ----
coefs_topics_orden <- NA
topics <- unique(data_rep$topics_sp)

for(i in 1:21){
  # Get topic i:
  df_topics_orden <- data_rep[data_rep$topics_sp==topics[i],]
  
  # Paste formula matching topic i to committee chair i :
  fo <- as.formula(paste0("total_sp_leg_type_topic~ female +","chairc",i,"+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+ membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31+total_sp_leg_period+factor(period2)"))
  orden_nb <- glm.nb(fo, data = df_topics_orden)
  coefs_model <- plot_model(orden_nb, rm.terms = "factor(period2) [1,2,3,4,5,6,7]")
  coefs_temp <- cbind.data.frame(coefs_model$data$term,coefs_model$data$estimate,coefs_model$data$conf.low,coefs_model$data$conf.high,coefs_model$data$p.value,topics[i],"By Topic")
  coefs_temp <- coefs_temp[1,]
  colnames(coefs_temp) <- c("terms", "estimates", "conf_low", "conf_hi","p_value" ,"topic", "model")
  coefs_topics_orden <- rbind.data.frame(coefs_topics_orden,coefs_temp)
}

coefs_topics_orden <- coefs_topics_orden[-1,]
coefs_topics_orden$type <- "Legislative Debates"

## Fix and add significance: ----
coefs_topics_orden$terms <- as.character(coefs_topics_orden$terms)
coefs_topics_orden$sig <- ifelse(coefs_topics_orden$p_value<0.05,1,0)
coefs_topics_orden$sig <- as.factor(coefs_topics_orden$sig)

# Plot Figure 3: ----

## Choose only Woman cov:
terms <- unique(coefs_topics_orden$terms)
df_coefs <- coefs_topics_orden[coefs_topics_orden$terms==terms[1],]

df_coefs %>%
  ggplot(aes(x=reorder_within(topic, estimates ,type), y=estimates, color = sig)) +
  geom_point() +
  geom_errorbar(aes(ymin = conf_low, ymax = conf_hi), width = 0.2) +
  scale_colour_manual(values= wes_palette("Royal1", n = 2)) +
  scale_x_reordered() +
  coord_flip() +
  geom_hline(yintercept = 1 ,lty="dashed", color = "grey") +
  theme_minimal() +
  theme(legend.position = "none") +
  labs(x="Topic", y = "Odds Ratios")

# Save: ----
# setwd("~/Replications Files/Figures")
ggsave(filename = "figure 3.jpg",w=5,h=7)
