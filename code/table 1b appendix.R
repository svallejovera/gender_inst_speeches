## Replication Alemán et al. (2024): Figure 5

rm(list=ls(all=TRUE))

library(tidyverse)
library(tidylog)
library(MASS)

# Load data: ----
# setwd("~/Replications Files/Data")
load("data_rep.Rdata")

# Models by topics: ----
topics <- unique(data_rep$topics_sp)

## All models
df_topics_orden <- data_rep[data_rep$topics_sp==topics[1],]
df_topics_orden$chairc_model <- df_topics_orden$chairc1
model_agri <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                     data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[2],]
df_topics_orden$chairc_model <- df_topics_orden$chairc2
model_civil <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                      data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[3],]
df_topics_orden$chairc_model <- df_topics_orden$chairc3
model_cult <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                     data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[4],]
df_topics_orden$chairc_model <- df_topics_orden$chairc4
model_def <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                    data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[5],]
df_topics_orden$chairc_model <- df_topics_orden$chairc5
model_domcomm <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                        data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[6],]
df_topics_orden$chairc_model <- df_topics_orden$chairc6
model_edu <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                    data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[7],]
df_topics_orden$chairc_model <- df_topics_orden$chairc7
model_ener <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                     data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[8],]
df_topics_orden$chairc_model <- df_topics_orden$chairc8
model_environ <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                        data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[9],]
df_topics_orden$chairc_model <- df_topics_orden$chairc9
model_foraff <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                       data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[10],]
df_topics_orden$chairc_model <- df_topics_orden$chairc10
model_gov_op <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                       data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[11],]
df_topics_orden$chairc_model <- df_topics_orden$chairc11
model_health <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                       data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[12],]
df_topics_orden$chairc_model <- df_topics_orden$chairc12
model_house <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                      data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[13],]
df_topics_orden$chairc_model <- df_topics_orden$chairc13
model_labor <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                      data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[14],]
df_topics_orden$chairc_model <- df_topics_orden$chairc14
model_lawcrime <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                         data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[15],]
df_topics_orden$chairc_model <- df_topics_orden$chairc15
model_locpol <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                       data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[16],]
df_topics_orden$chairc_model <- df_topics_orden$chairc16
model_other <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                      data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[17],]
df_topics_orden$chairc_model <- df_topics_orden$chairc17
model_socwel <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                       data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[18],]
df_topics_orden$chairc_model <- df_topics_orden$chairc18
model_sport <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                      data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[19],]
df_topics_orden$chairc_model <- df_topics_orden$chairc19
model_tech <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                     data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[20],]
df_topics_orden$chairc_model <- df_topics_orden$chairc20
model_terri <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                      data = df_topics_orden)

df_topics_orden <- data_rep[data_rep$topics_sp==topics[21],]
df_topics_orden$chairc_model <- df_topics_orden$chairc21
model_trans <- glm.nb(total_sp_leg_type_topic~ female +chairc_model+ alianza+other+tenure+lndist+porcRural+margenlist+mesa+membc1 + membc1 +membc2 +membc3 +membc4 +membc5 +membc6 +membc7 +membc8 +membc9 +membc10 +membc11 +membc12 +membc13 +membc14 +membc15 +membc16 +membc17 +membc19 +membc20 +membc21 +membc22 +membc23 +membc24  +membc26 +membc27 +membc28 +membc29 +membc30 +membc31 + total_sp_leg_period + factor(period2), # family = quasibinomial(link = logit),  
                      data = df_topics_orden)


library(modelsummary)

models <- list()
models[["Agriculture"]] <- model_agri
models[["Civil Rights"]] <- model_civil
models[["Culture"]] <- model_cult
models[["Defense"]] <- model_def
models[["Domestic Commerce"]] <- model_domcomm
models[["Education"]] <- model_edu
models[["Energy"]] <- model_ener
models[["Environment"]] <- model_environ
models[["Foreign Affairs"]] <- model_foraff
models[["Government Opposition"]] <- model_gov_op
models[["Health"]] <- model_health
models[["Housing"]] <- model_house
models[["Labor"]] <- model_labor
models[["Law and Crime"]] <- model_lawcrime
models[["Local Politics"]] <- model_locpol
models[["Other Public Services"]] <- model_other
models[["Social Welfare"]] <- model_socwel
models[["Sports"]] <- model_sport
models[["Technology"]] <- model_tech
models[["Territory"]] <- model_terri
models[["Transportation"]] <- model_trans

msummary(models, 
         stars = c('*' = .1, '**' = .05, '***' = .01), coef_omit = "factor",
         fmt = 3, 
         gof_map = c("nobs", "r.squared"),
         output = "table 1b appendix.docx",
         notes = list('Note: Legislative period fixed-effects estimated but not included.'))

