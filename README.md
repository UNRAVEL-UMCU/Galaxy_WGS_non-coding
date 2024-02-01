# Galaxy_WGS_non-coding
This study aims to identify non-coding regulatory variantsin the WGS data, by using the Unravel Galaxy. This GitHub will describe the non-coding WGS galaxy analysis, in addition of this analysis further imaging analysis is performed. For the additional research, look at the [Additional_research](./additional_research)

## Table of Contents
- [Approach](#Approach)
- [Requirements](#Requirements)
- [Galaxy analysis](#Galaxy_analysis)
- [Acknowledgement](#Acknowledgement)
## Approach
![Flowchart PPARA](https://github.com/UNRAVEL-UMCU/Galaxy_WGS_non-coding/assets/127952067/9c614e8d-3dd0-4adf-99fc-9bb138eaf27c)

## Requirements
- [Galaxy Europe](https://usegalaxy.eu)
- [VCF file](ftp://ftp.sra.ebi.ac.uk/vol1/ERZ389/ERZ389530/FR07961001.pass.recode.vcf.gz)
- BED files (downloadable via this GitHub)
- Hg19 reference genome
- dbSNP (This study used dbSNP-151)
- Rstudio with Rversion > R 4.3.1.

## Galaxy_analysis
The following steps are performed in the Galaxy to detect variants in specified regions
- **VCF_BEDintersect:** The VCF file as selected as input and a BED file is selected. For every BED file a seperate VCF_BEDintersect needs to be run. The output are variants within the BED formatted region.
- **SNPeff_eff:** For annotation of the VCF_BEDintersect output SNPeff_eff is run for every BED filtered VCF.
- **Probability score:** To predict if a variant will impact the regulatory function of a regulatory element [RegulomeDB](https://regulomedb.org/regulome-search/) is used.
- **Visualisation:** For visualisation [Rstudio](https://posit.co/download/rstudio-desktop/) is used. The scripts are available in [Scripts](./Scripts).


## Acknowledgement
The project was conducted at the Harakalova/v.Steenbeek research group, part of UMC Utrecht.
