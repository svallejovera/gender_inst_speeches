# Replication materials

Replication materials for "Gender, Institutions, and Legislative Speech" (2024), by Eduardo Alemán, Tiffany Barnes, Juan Pablo Micozzi, and Sebastián Vallejo Vera, at the __Comparative Politics__ journal.

> __Abstract:__
> Speechmaking is a vital resource for legislators and holds particular importance for women lawmakers, who frequently constitute a numerical minority and face constraints on their political influence. We argue that formal and informal institutions, district characteristics, and issue priorities shape women’s speech participation. Analyzing twenty-eight years of speeches from Chile’s Chamber of Deputies, we first show that women’s speeches constitute a small share of all speeches, directly corresponding to their numeric representation. Proportionally, however, women are over/under-represented in speechmaking across different policy areas. After controlling for various factors correlating with gender, including committee assignments, tenure, and district characteristics, women’s relative participation is similar to men’s in most topics but exceeds men’s in areas that disproportionately affect women’s lives, reflecting their commitment to substantive representation. 

A link to the latest pre-print is available [here](final_manuscript.pdf). The published version is [here](https://www.ingentaconnect.com/content/cuny/cp/pre-prints/content-jcpo23248).

This README file provides an overview of the replications materials for the article. The [Data](https://github.com/svallejovera/gender_inst_speeches#data) section describes the main dataset required to reproduce the tables and figures in the paper. The [Analysis](https://github.com/svallejovera/gender_inst_speeches#code) section summarizes the purpose of each R or python script. 

## Data
  - `data/data_rep.Rdata`: dataset with information on the number of speeches delivered in every topic by a legisator, across differnt legislative sessions. The unit of analysis is the session-legislator-topic. We include all control variables. It contains the following variables:
      - **perodo**: legislative session *k*
      - **candidatoa**: candidate *i* name 
      - **female**: indicator variable that takes value of 1 if legislator is a woman and 0 otherwise
      - **topics_sp**: topic *j*     
      - **total_sp_leg_type_topic**: total number of speeches delivered by candidate *i* on topic *j* during session *k*
      - **total_sp_leg_type_topic2**: total number of speeches **not mentioning women** delivered by candidate *i* on topic *j* during session *k*
      - **total_sp_leg_period**: total number of speeches delivered by candidate *i* during session *k*
      - **total_mentions_muj**: total number of speeches delivered mentioning women by candidate *i* during session *k*  
      - **mesa**: indicator variable that takes value of 1 if the legislator is part of the executive board of the Chamber of Deputies (*Mesa*) and 0 otherwise
      - **membc1**:**membc31**: indicator variable that takes value of 1 if the legislator is a member of committee *p* and 0 otherwise (see `data/committees.xlsx` for the names of the committees matching the numbers)
      - **chairc1**:**chairc31**: indicator variable that takes value of 1 if the legislator is president of committee *p* and 0 otherwise (see `data/committees.xlsx` for the names of the committees matching the numbers)
      - **alianza**: indicator variable that takes value of 1 if the legislator is part of the *Alianza* coalition and 0 otherwise
      - **other**: indicator variable that takes value of 1 if the legislator is part of the *Other* coalition and 0 otherwise
      - **tenure**: the number of terms the legislator has served in the chamber
      - **lndist**: logged distance between main town of the legislator’s district and La Moneda, the presiden- tial building located in Santiago, computed using Google Maps
      - **porcRural**: share of rural inhabitants in the district, obtained from Chilean census information
      - **margenlist**: difference between the votes received by the legislator and her list’s partner
  - `data/keyword mujer.xlsx`: dictionary with words associated with women-related topics.
  - `data/committees.xlsx`: names of the committees matching the numbers (see variables from `data/data_rep.Rdata`.
  - `data/topics_committees.xlsx`: names of topics that are matched to committees.

## Analysis
  - [figure 2.R](https://github.com/svallejovera/gender_inst_speeches/blob/main/code/figure%202.R) to replicate Figure 2 of the paper, where we show the proportion of speeches delivered by women by topic.

<img src = "https://github.com/svallejovera/gender_inst_speeches/blob/main/figures/figure%202.jpeg">

  - [figure 3.R](https://github.com/svallejovera/gender_inst_speeches/blob/main/code/figure%203.R) to replicate Figure 3 of the paper, where we show gender difference in speechmaking by topic.

<img src = "https://github.com/svallejovera/gender_inst_speeches/blob/main/figures/figure%203.jpg">

  - [figure 4.R](https://github.com/svallejovera/gender_inst_speeches/blob/main/code/figure%204.R) to replicate Figures 4a and 4b of the paper, where we show gender differences in Law and Crime speeches when we include and exclude women issues.

<img src = "https://github.com/svallejovera/gender_inst_speeches/blob/main/figures/figure%204a.jpg">
<img src = "https://github.com/svallejovera/gender_inst_speeches/blob/main/figures/figure%204b.jpg">

  - [figure 5.R](https://github.com/svallejovera/gender_inst_speeches/blob/main/code/figure%205.R) to replicate Figure 5 of the paper, where we plot the relationship between being a women a delivering non women-related speeches and women-related speeches.

<img src = "https://github.com/svallejovera/gender_inst_speeches/blob/main/figures/figure%205.jpg">

  - [table 1b appendix.R](https://github.com/SMAPPNYU/lead_follow_apsr/blob/master/03-analysis/07-table4.R) to replicate Table 1.B of the Appendix, where we estimate the models for the determinants of speech topic. We use the odds ratio for the variable *Woman* in Figure 3.

## Supervised Machine Learning Model (XLM-RoBERTa) for Topics:

`data/data_rep.Rdata` contains the training set used to train an XLM-RoBERTa model to identify topics in speeches. A full tutorial on how to train Transformer-based models can be found [here](https://colab.research.google.com/drive/1rWh6JVhJ4aZmdTYZUYVYo3AOGb2TOi6b?usp=sharing#scrollTo=Classification_Models). A complete course on Computational Text Analysis can be found [here](https://svallejovera.github.io/cpa_uwo/index.html)

