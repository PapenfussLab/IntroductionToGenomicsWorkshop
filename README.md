# A introduction to SNV analyses in whole genome sequencing

## Instructors
- Ruining Dong (dong.rn@wehi.edu.au)
- James Fu (fu.j@wehi.edu.au)
- Daniel Cameron (cameron.d@wehi.edu.au)

## About this workshop
In this 2-hour workshop, you will have hands-on experience on SNV calling and 
analysis. You will be provided toy short-read sequencing samples, followed by 
read alignments, variant calling and pathogenicity analysis.

## Accesing the workshop
- Docker image: [link](http://app.orchestra.cancerdatasci.org/)
- Workshop material: [link](https://papenfusslab.github.io/IntroductionToGenomicsWorkshop/)

## Overview
This workshop will guide you through the workflow of a simple genomic SNV analysis.

This is a hands-on workshop, which means you will be given time to get the tools running. 

For each task, you will be given a brief instruction prior to getting your hands dirty. At the end of the given time, there will be a brief summary.

### Pre-requisites

Basic knowledge of using command line and Rstudio is ideal. Although strictly speaking, no prior knowledge is required to attend this workshop.

### Participation

The workshop runs for 2 hours. You will find tasks and related information in the worksheet.

If you run into any problems, please describe the issue and send via zoom chat. The instructors will be monitoring the chat panel and answer any question in real time.

### Tools to be used

* [bwa](http://bio-bwa.sourceforge.net/bwa.shtml)
* [samtools](http://www.htslib.org/doc/samtools.html)
* [Strelka2](https://github.com/Illumina/strelka)
* [COSMIC](https://cancer.sanger.ac.uk/cosmic)
* [VariantAnnotation](https://bioconductor.org/packages/release/bioc/html/VariantAnnotation.html)

### Time outline

For this 120-minute workshop:

| Activity                                               | Time |
|--------------------------------------------------------|------|
| Introduction                                           |  5m  |
| Working Environment: command line and Rstudio          | 15m  |
| Read Alignment: bwa and samtools                       | 20m  |
| SNV calling: Strelka2                                  | 20m  |
| Pathogenicity analysis                                 | 50m  |
| Summary                                                | 10m  |

### Workshop goals and objectives

Variant calling is a vital component of genomics studies. Genomic variants have been found in various structures and sizes, including single-nucleotide variants (SNVs), small insertion and deletions (INDELs), copy number variants (CNVs) and structural variants (SVs). Computational tools for detecting these variants are developed with different underlying approaches.

This workshop is designed to offer a hands-on experience on genomic variant calling and analysis. The tasks are designed to guide you through the key steps of SNV analysis on a tumour/normal paired sample.  

### Learning goals

* To understand the general workflow of a genomic variant analysis
* To identify methods to handle short-read sequencing data and variant calls

### Learning objectives

* To recall the key concepts in genomic variant analysis
* To apply the concepts in SNV calling to germline and paired tumour/normal data
* To perform SNV analysis using publicly available resources



