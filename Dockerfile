FROM bioconductor/bioconductor_docker:devel AS IntroductionToGenomicsWorkshop

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
		gawk \
		samtools \
		bcftools \
		bwa \
		wget \
		less \
	&& rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/Illumina/strelka/releases/download/v2.9.10/strelka-2.9.10.centos6_x86_64.tar.bz2 \
	&& tar xvf strelka-2.9.10.centos6_x86_64.tar.bz2 \
	&& cd strelka-2.9.10.centos6_x86_64 \
	&& cp -r * /usr/ \
	&& cd .. \
	&& rm -r strelka-2.9.10.centos6_x86_64*

# Create reference genome
WORKDIR /home/rstudio/colo829
RUN wget http://hgdownload.cse.ucsc.edu/goldenpath/hg19/chromosomes/chr7.fa.gz \
	&& gunzip chr7.fa.gz \
	&& samtools faidx chr7.fa \
	&& bwa index chr7.fa

WORKDIR /home/rstudio

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(c('TxDb.Hsapiens.UCSC.hg19.knownGene', 'BSgenome.Hsapiens.UCSC.hg19', 'PolyPhen.Hsapiens.dbSNP131', 'VariantAnnotation', 'BioBase', 'tidyverse'), ask=FALSE)"

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"
