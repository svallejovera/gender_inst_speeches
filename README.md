# Replication materials

Replication materials for "Gender, Institutions, and Legislative Speech" (2024), by Eduardo Alemán, Tiffany Barnes, Juan Pablo Micozzi, and Sebastián Vallejo Vera, at the __Comparative Politics__.

> __Abstract:__
> Speechmaking is a vital resource for legislators and holds particular importance for women lawmakers, who frequently constitute a numerical minority and face constraints on their political influence. We argue that formal and informal institutions, district characteristics, and issue priorities shape women’s speech participation. Analyzing twenty-eight years of speeches from Chile’s Chamber of Deputies, we first show that women’s speeches constitute a small share of all speeches, directly corresponding to their numeric representation. Proportionally, however, women are over/under-represented in speechmaking across different policy areas. After controlling for various factors correlating with gender, including committee assignments, tenure, and district characteristics, women’s relative participation is similar to men’s in most topics but exceeds men’s in areas that disproportionately affect women’s lives, reflecting their commitment to substantive representation. 

A link to the latest pre-print is available [here](final_manuscript.pdf). The published version is [here](https://www.ingentaconnect.com/content/cuny/cp/pre-prints/content-jcpo23248).

This README file provides an overview of the replications materials for the article. The [Data](https://github.com/svallejovera/gender_inst_speeches#data) section describes the main dataset required to reproduce the tables and figures in the paper. The [Analysis](https://github.com/svallejovera/gender_inst_speeches#code) section summarizes the purpose of each R or python script. 

## Data
  - `data/data_rep.Rdata`: dataset with information on the number of speeches delivered in every topic by a legisator, across differnt legislative sessions. The unit of analysis is the session-legislator-topic. We include all control variables. It contains the following variables
      - **topic**: topic codes, range from 1 to 104, where [101,102,103,104] are topics that we merged a ad-hoc. Not all topics are of a political nature. These are the political ones used in our analysis: [3, 7, 9, 12, 14, 15, 16, 18, 20, 23, 28, 32, 33, 36, 37, 39, 41, 43, 46, 47, 48, 49, 50, 51, 53, 58, 62, 63, 64, 66, 67, 70, 75, 81, 83, 85, 88, 89, 93, 96, 97, 99, 100, 101, 102, 103, 104]
      - **dem**: the attention that Democrats in Congress paid to the given issue in that particular day
      - **rep**: the attention that Republicans in Congress paid to the given issue in that particular day
      - **public**: the attention that the Attentive Public paid to the given issue in that particular day      
      - **pubdem**: the attention that Democratic Supporters paid to the given issue in that particular day
      - **pubrep**: the attention that Republican Supporters paid to the given issue in that particular day      
      - **random**: the attention that the General Public paid to the given issue in that particular day
      - **random_us**: the attention that the General Public (located in the United States) paid to the given issue in that particular day            
      - **media**: the attention that naional Media organizations paid to the given issue in that particular day

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

  - [07-table4.R](https://github.com/SMAPPNYU/lead_follow_apsr/blob/master/03-analysis/07-table4.R) to replicate Table 4 of the paper, where we show the correlation between the issue attention distribution of the media, and the political and public groups under study.

<img src = "https://github.com/SMAPPNYU/lead_follow_apsr/blob/master/images/table4.png">

  - [08-figure6.R](https://github.com/SMAPPNYU/lead_follow_apsr/blob/master/03-analysis/08-figure6.R) to replicate Figure 6 of the paper, where we show the ability of the the different groups under study to lead the agenda of the media, and _viceversa_.

<img src = "https://github.com/SMAPPNYU/lead_follow_apsr/blob/master/images/figure6.png">

## Supervised Machine Learning Model (XLM-RoBERTa) for Topics:

`data/data_rep.Rdata` contains the training set used to train an XLM-RoBERTa model to identify topics in speeches. A full tutorial on how to train Transformer-based models can be found [here](https://colab.research.google.com/drive/1rWh6JVhJ4aZmdTYZUYVYo3AOGb2TOi6b?usp=sharing#scrollTo=Classification_Models). A complete course on Computational Text Analysis can be found [here](https://svallejovera.github.io/cpa_uwo/index.html)

