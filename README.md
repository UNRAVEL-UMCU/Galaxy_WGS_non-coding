# Galaxy_WGS_non-coding
This study aims to identify non-coding regulatory variantsin the WGS data, by using the Unravel Galaxy. This GitHub will describe the non-coding WGS galaxy analysis, in addition of this analysis further imaging analysis is performed.

## Table of Contents
- [Approach](#Approach)
- [Requirements](#Requirements)
- [Galaxy analysis](#Galaxy analysis)
- [Example results](#Example results)
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

## Galaxy analysis
The following steps are performed in the Galaxy to detect variants in specified regions
- **VCF_BEDintersect:** The VCF file as selected as input and a BED file is selected. For every BED file a seperate VCF_BEDintersect needs to be run. The output are variants within the BED formatted region.
- **SNPeff_eff:** For annotation of the VCF_BEDintersect output SNPeff_eff is run for every BED filtered VCF.
- **Probability score:** To predict if a variant will impact the regulatory function of a regulatory element [RegulomeDB](https://regulomedb.org/regulome-search/) is used.
- **Visualisation:** For visualisation [Rstudio](https://posit.co/download/rstudio-desktop/) is used. The scripts are available in the directory 'Scripts'.

## Example results
Two different visualisations are created; one for acetylated regions and one for PPRE variants
![Acetylated regions](https://github.com/UNRAVEL-UMCU/Galaxy_WGS_non-coding/assets/127952067/76684a6f-89d0-43ad-871a-e533be92cfe7)
![PPRE variants](https://github.com/UNRAVEL-UMCU/Galaxy_WGS_non-coding/assets/127952067/eeef42dd-8f89-41bd-b653-246925dad5a0)


## Acknowledgement
The project was conducted at the Harakalova/v.Steenbeek research group, part of UMC Utrecht.
