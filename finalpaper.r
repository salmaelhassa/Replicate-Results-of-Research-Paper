## [1] "/Users/salmaelhassa/Library/CloudStorage/OneDrive-Hunter-CUNY/BIO 47120"
# load libraries and read data
library(tidyverse) # load a package into memory
## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──
## ✓ggplot2 3.3.5 ## ✓tibble 3.1.6 ## ✓tidyr 1.2.0 ## ✓readr 2.1.2
✓purrr 0.3.4 ✓dplyr 1.0.8 ✓stringr 1.4.0
✓forcats 0.5.1
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ── ## x dplyr::filter() masks stats::filter()
## x dplyr::lag() masks stats::lag()
library(readxl) # load another package library(pheatmap)
library(ggrepel)
library(broom)
s1 <- read_xlsx("mbio.03257-21-sd001.xlsx") glimpse(s1)
## Rows: 288
## Columns: 64
## $ WTheart_1
## $ WTheart_2
## $ WTheart_3
## $ WTheart_Flu_1
## $ WTheart_Flu_2
## $ WTheart_Flu_3
## $ WTheart_Flu_4
## $ WTheart_Flu_5
## $ WTheart_Flu_6
## $ WTheart_Flu_7
## $ WTheart_Flu_8
## $ WTheart_Spn_1
## $ WTheart_Spn_2
## $ WTheart_Spn_3
## $ WTheart_Spn_4
## $ `WTheart_Spn+Flu_1` ## $ `WTheart_Spn+Flu_2` ## $ `WTheart_Spn+Flu_3` ## $ `WTheart_Spn+Flu_4` ## $ `WTheart_Spn+Flu_5`
<dbl> 25.2771, 21.6610, 22.2139, 2... <dbl> 26.4097, 21.9625, 20.6939, 1... <dbl> 25.6467, 22.7041, 22.0564, 2...
<dbl> 33.4129, 27.2926, 27.7662, 2... <dbl> 33.3624, 27.3277, 28.0178, 2... <dbl> 33.3950, 27.4114, 28.0660, 2... <dbl> 33.3460, 27.2185, 27.9679, 2... <dbl> 33.3616, 27.3427, 27.7902, 2... <dbl> 33.3576, 27.1108, 28.0834, 2... <dbl> 33.3221, 27.2311, 28.0112, 2... <dbl> 33.3188, 27.1038, 27.8887, 2...
<dbl> 33.0757, 27.6763, 27.6525, 2... <dbl> 32.7469, 27.7278, 27.4031, 2... <dbl> 33.2891, 26.4799, 26.6309, 2... <dbl> 33.2930, 25.7215, 26.1927, 2...
<dbl> 32.7470, 29.1517, 27.1300, 2... <dbl> 32.8580, 29.1811, 27.1426, 2... <dbl> 32.9041, 29.1930, 24.7301, 2... <dbl> 33.2642, 29.4660, 25.3363, 2... <dbl> 32.8956, 28.8063, 26.9364, 2...
## $ `WTheart_Spn+Flu_6`
## $ `C: ANOVA Significant`
## $ `N: Peptides`
## $ `N: Razor + unique peptides` ## $ `N: Unique peptides`
## $ `N: Mol. weight [kDa]` ## $ `N: Q-value`
## $ `N: Score`
## $ `N: Intensity`
## $ `N: MS/MS count`
## $ `N: KOheart_Flu_1`
## $ `N: KOheart_Flu_2`
## $ `N: KOheart_Flu_3`
## $ `N: KOheart_Flu_4`
## $ `N: KOheart_Flu_5`
## $ `N: KOheart_Flu_6`
## $ `N: KOheart_Spn_1`
## $ `N: KOheart_Spn_2`
## $ `N: KOheart_Spn_3`
## $ `N: KOheart_Spn_4`
## $ `N: KOheart_Spn_5`
## $ `N: KOheart_Spn_6`
## $ `N: KOheart_Spn+Flu_1` ## $ `N: KOheart_Spn+Flu_2` ## $ `N: KOheart_Spn+Flu_3` ## $ `N: KOheart_Spn+Flu_4` ## $ `N: KOheart_Spn+Flu_5` ## $ `N: KOheart_Spn+Flu_6` ## $ `N: -Log ANOVA p value` ## $ `N: ANOVA q-value`
## $ `N: WTheart_Flu_9` ## $ `N: WTheart_Flu_10` ## $ `N: WTheart_Flu_11` ## $ `N: WTheart_Flu_12`
## $ `T: Protein IDs`
## $ `T: Majority protein IDs`
<dbl> 3906.4000, 87.4280, 564.8100... <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0...
<dbl> 323.310, 323.310, 323.310, 3... <dbl> 3.4109e+12, 1.4369e+11, 7.25...
<dbl> 61066, 1699, 2501, 1408, 554... <dbl> 33.5055, 30.1726, 28.6582, 2... <dbl> 33.3996, 30.0208, 28.5983, 2... <dbl> 33.1025, 27.5168, 27.3319, 2... <dbl> 33.1150, 27.7262, 27.4882, 2... <dbl> 33.1680, 28.5474, 27.0021, 2... <dbl> 33.1592, 28.3598, 26.5028, 2...
<dbl> 32.7800, 25.8975, 27.4959, 2... <dbl> 32.6056, 26.0503, 27.2593, 2... <dbl> 33.1464, 27.2903, 27.3860, 2... <dbl> 33.1319, 27.3353, 27.2431, 2... <dbl> 33.0282, 27.8088, 27.6174, 2... <dbl> 33.0186, 28.0666, 27.5100, 2...
<dbl> 32.9661, 29.5358, 27.5820, 2... <dbl> 32.9142, 29.2381, 27.6580, 2... <dbl> 33.0433, 29.5942, 26.2962, 2... <dbl> 32.8150, 29.5519, 26.3991, 2... <dbl> 33.0610, 28.8014, 26.2630, 2... <dbl> 33.0924, 28.9945, 26.0309, 2... <dbl> 21.19040, 12.90160, 8.20353,...
<dbl> 0.00000e+00, 0.00000e+00, 0.... <dbl> 33.1990, 27.5386, 26.8193, 2...
<dbl> 33.2188, 27.9519, 26.4961, 2... <dbl> 33.3648, 27.2435, 26.2031, 2... <dbl> 32.9569, 26.2007, 26.3605, 2...
<chr> "sp|A2ASS6|TITIN_MOUSE;REV ... <chr> "sp|A2ASS6|TITIN_MOUSE", "sp...
## $ `T: id`
## $ `T: Protein`
## $ `T: Accession`
## $ `T: Protein Name` ## $ `T: Gene`
names(s1) # show colnames
## [1] "WTheart_1"
## [2] "WTheart_2"
## [3] "WTheart_3"
## [4] "WTheart_Flu_1"
## [5] "WTheart_Flu_2"
## [6] "WTheart_Flu_3"
## [7] "WTheart_Flu_4"
## [8] "WTheart_Flu_5"
## [9] "WTheart_Flu_6"
## [10] "WTheart_Flu_7"
## [11] "WTheart_Flu_8"
## [12] "WTheart_Spn_1"
## [13] "WTheart_Spn_2"
## [14] "WTheart_Spn_3"
## [15] "WTheart_Spn_4"
## [16] "WTheart_Spn+Flu_1" ## [17] "WTheart_Spn+Flu_2" ## [18] "WTheart_Spn+Flu_3" ## [19] "WTheart_Spn+Flu_4" ## [20] "WTheart_Spn+Flu_5" ## [21] "WTheart_Spn+Flu_6"
<dbl> 33.1618, 28.8994, 26.5128, 2... <chr> "+", "+", "+", "+", "+", "+"...
<dbl> 1400, 29, 129, 97, 18, 17, 2...
<dbl> 1400, 29, 129, 97, 18, 17, 1...
<dbl> 1400, 29, 121, 97, 18, 17, 1... <dbl> 48.3, 45.9, 34.9, 38.8, 32.5...
## $ `N: Sequence coverage [%]`
## $ `N: Unique + razor sequence coverage [%]` <dbl> 48.3, 45.9, 34.9, 38.8, 32.5... ## $ `N: Unique sequence coverage [%]` <dbl> 48.3, 45.9, 32.8, 38.8, 32.5...
<dbl> 61, 72, 75, 78, 90, 92, 99, ...
<chr> "UBP24", "ACACB", "AGRF5", "...
<chr> "B1AY13", "E9Q4Z2", "G5E8Q8"... <chr> "Ubiquitin carboxyl-terminal...
<chr> "Usp24", "Acacb", "Adgrf5", ...

## [22] "C: ANOVA Significant"
## [23] "N: Peptides"
## [24] "N: Razor + unique peptides"
## [25] "N: Unique peptides"
## [26] "N: Sequence coverage [%]"
## [27] "N: Unique + razor sequence coverage [%]" ## [28] "N: Unique sequence coverage [%]"
## [29] "N: Mol. weight [kDa]"
## [30] "N: Q-value"
## [31] "N: Score"
## [32] "N: Intensity"
## [33] "N: MS/MS count"
## [34] "N: KOheart_Flu_1"
## [35] "N: KOheart_Flu_2"
## [36] "N: KOheart_Flu_3"
## [37] "N: KOheart_Flu_4"
## [38] "N: KOheart_Flu_5"
## [39] "N: KOheart_Flu_6"
## [40] "N: KOheart_Spn_1"
## [41] "N: KOheart_Spn_2"
## [42] "N: KOheart_Spn_3"
## [43] "N: KOheart_Spn_4"
## [44] "N: KOheart_Spn_5"
## [45] "N: KOheart_Spn_6"
## [46] "N: KOheart_Spn+Flu_1"
## [47] "N: KOheart_Spn+Flu_2"
## [48] "N: KOheart_Spn+Flu_3"
## [49] "N: KOheart_Spn+Flu_4"
## [50] "N: KOheart_Spn+Flu_5"
## [51] "N: KOheart_Spn+Flu_6"
## [52] "N: -Log ANOVA p value"
## [53] "N: ANOVA q-value"
## [54] "N: WTheart_Flu_9"
## [55] "N: WTheart_Flu_10"
## [56] "N: WTheart_Flu_11"
## [57] "N: WTheart_Flu_12"
## [58] "T: Protein IDs"
## [59] "T: Majority protein IDs" ## [60] "T: id"
## [61] "T: Protein"
## [62] "T: Accession"
## [63] "T: Protein Name"
## [64] "T: Gene"
# Data wrangling: turn into a tidy table (one row one value) ## select intensity and protein id and make a long table s1.long <- s1 %>%
select(1:21, 34:51, 54:57, 61) %>%
pivot_longer(1:43, values_to = "intensity", names_to = "sample_id")
## make colnames computer-friendly colnames(s1.long)[1] <- c("protein_id")
## Extract and add categorical variable columns (col headings are not supposed to contain variables) ### add a genotype column
s1.long <- s1.long %>%
mutate(genotype = if_else(str_detect(sample_id, "KO"), "knock_out", "wild_type"))
### checksum to validate
s1.long %>% group_by(genotype) %>% count()
## # A tibble: 2 × 2
## # Groups: genotype [2] ## genotype n
## <chr> <int>
## 1 knock_out 5184
## 2 wild_type 7200

### add a pathogen column s1.long <- s1.long %>%
mutate(pathogen = if_else(str_detect(sample_id, "heart_Flu_"), "flu", if_else(str_detect(sample_id, "heart_Spn_"), "strep",
if_else(str_detect(sample_id, "Spn.Flu_"), "both", "control"))))
### checksum to validate
s1.long %>% group_by(pathogen) %>% count()
## # A tibble: 4 × 2
## # Groups: pathogen [4] ## pathogen n
## <chr> <int>
## 1 both 3456
## 2 control 864
## 3 flu 5184
## 4 strep 2880
tmp <- s1.long %>% group_by(sample_id, pathogen) %>% count()
### add a replicate column s1.long <- s1.long %>%
mutate(rep = as.numeric(str_replace(sample_id, "^.+_(\\d+)$", "\\1")))
### checksum to validate
s1.long %>% group_by(pathogen) %>% count()
## # A tibble: 4 × 2
## # Groups: pathogen [4] ## pathogen n
## <chr> <int>
## 1 both 3456
## 2 control 864 ## 3 flu 5184 ## 4 strep 2880
#tmp <- s1.long %>% group_by(sample_id, pathogen) %>% count() ### checksum to validate
s1.long %>% group_by(rep) %>% count()
## # A tibble: 12 × 2
## # Groups: rep [12]
## rep n
## <dbl> <int>
## 1
## 2
## 3
## 4
## 5
## 6
## 7
## 8
## 9
##10 10 288 ##11 11 288 ##12 12 288
1 2016 2 2016 3 2016 4 1728 5 1440 6 1440 7 288 8 288 9 288
# cluster analysis of genes and samples by heatmap
## heatmap by geom_tile (not very informative)
s1.long <- s1.long %>% filter(!is.na(protein_id))
s1.long %>% ggplot(aes(x = sample_id, y = protein_id, fill = intensity )) +
geom_tile() +
scale_fill_gradient(low="white", high="blue") + theme_bw()
## heatmap by pheatmap, need a matrix (not table)
s1.wide <- s1.long %>% select(1:3) %>% pivot_wider(names_from = "sample_id", values_from = "intensity") s1.mat <- as.matrix(s1.wide[,2:44])
rownames(s1.mat) <- s1.wide %>% pull(protein_id)
pheatmap(s1.mat, scale = "none")
