# Replicate-Results-of-Research-Paper
Date: 2022-05-11
This is my capstone project for my undergraduate degree in biology bioinformatics.
Replicated results using a raw data set produced by primary research paper: Platt et al. mBio; Topic: flu Strep co-infection.
Final report
	•	Final version due Saturday, May 21, 2022 @10pm.
	•	First draft was due April 22, 2022 @10pm: 12 students submitted ontime, 4 late, 7 did not submit (1 excused)
	•	2nd draft was due Friday April 29, 2022 @ 10pm: 7 students didn't submit
	•	Again, I will give 10 pts for ontime submission. This counts toward the total 50 pts for the final report.
	•	I will deduct 5 pts if you are late, deduct 10 if you didn't submit
	•	Upload an PDF generated with the RMarkdown template posted. This time, you should have a draft but complete report with all section filled in, including
	•	Your own title, Background, Material and Methods
	•	Table of Contents
	•	Results with figure caption
	•	References
	•	Remove long R outputs like a print out of data table before posting your PDF (Your final report should NOT be more than 10 pages long: retain only the essential, informative outputs like figures, commands, and statistics, not the data themselves. If you must, use head() to show ONLY the top rows.)
	•	For the final report, affte the data explroation phase, it's time to improve by focusing on
	▪	Writing
	▪	A maximum of two figues with captions to illustrate your main conclusion
	•	Group 1. Assigned dataset: Diabimmune data set, for testing the "hiegene hypothesis"
	•	Load metadata using the command: load(url("http://diverge.hunter.cuny.edu/~weigang/datasets-bio47120/DIABIMMUNE_Karelia_metadata.RData"))
	•	Load the 16S data set using the command: load(url("http://diverge.hunter.cuny.edu/~weigang/datasets-bio47120/diabimmune_karelia_16s_data.rdata"))
	•	Follow this tutorial to explore the data set: https://yanhui09.github.io/microbiome_analysis/1_microbiome_r.html?msclkid=b44e6336bb5b11ecbe5b0602981316ee=
	•	Task assignments: Jigme (alpha diversity), Ashley (beta diversity, PCoA), Kevin (abundance), Priya (Differential abundance analysis), Atia (beta diversity - NMDA)
	•	A sample R script (by Winston) is provided for your reference: Download and open with your  R studio:http://diverge.hunter.cuny.edu/~weigang/datasets-bio47120/influenza_coinfection_in_heart.R 
	•	Group 2. Gut microbiome as a biomarker of colorectal cancer.
	•	Paper link: A Goldilocks Principle for the Gut Microbiome: Taxonomic Resolution Matters for Microbiome-Based Classification of Colorectal Cancer | mBio (asm.org) 
	•	Task assignments: Metadata (Hagar), Fig 1 (Tara), Fig S1 (Max), Fig S2 (Eamen), Fig S3 (Winston)
	•	R scripts from the authors: Armour_Resolution_mBio_2021/code/R/figures at master · SchlossLab/Armour_Resolution_mBio_2021 (github.com) 
	•	Data: Armour_Resolution_mBio_2021/data/process at master · SchlossLab/Armour_Resolution_mBio_2021 (github.com). Hint: Download or clone the whole github
	•	Group 3. Gene expression during flu and Strep co-infections in hearts
	•	Paper link: Pandemic Influenza Infection Promotes Streptococcus pneumoniae Infiltration, Necrotic Damage, and Proteomic Remodeling in the Heart | mBio (asm.org) 
	•	Data sets: Supplemental Materials: download Excel sheets S1 and S2. Pandemic Influenza Infection Promotes Streptococcus pneumoniae Infiltration, Necrotic Damage, and Proteomic Remodeling in the Heart | mBio (asm.org) 
	•	Task assignments: Mariam (T-test for WT vs KO for genes), Amy (Fig 2 heatmap), Zaheen (Fig 1. PCA), Mennal (ANOVA for genes), Salma (Fig 1. heatmap)
	•	A sample R script is provided for your reference: Download and open with your  R studio: http://diverge.hunter.cuny.edu/~weigang/datasets-bio47120/influenza_coinfection_in_heart.R (*updated on April 23, 2022)
	•	Group 4. Conserved regulatory elements between Human and Mice.
	•	Data sets: Long-range promoter–enhancer contacts are conserved during evolution and contribute to gene expression robustness — Supplemental Material (cshlp.org) 
	•	Task assignments: Gueye (S1),  Nenewoke (S4), Roban (S5), Tamzeen (S6)
	•	Group 5. Genes involved in iron utilization in TB
	•	Paper link: Comprehensive analysis of iron utilization by Mycobacterium tuberculosis (plos.org) 
	•	Data table: Supplemental Tables: S6 & S7
	•	Task assignments: Steven (S6, boxplots by genotype; also try heatmap),  Shirley (S6, boxplots by genotype, heatmap is also possible), Karamee (S7, vocalno plots, color the significant genes in red), Lupa (S7, volcano plots, color the significant genes in red)
