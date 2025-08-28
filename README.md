This repository contains the codes for the paper: "The risk of human- and mammal-infecting tick-borne viruses in Northwest China and adjacent countries: a vector, genomic, and modelling study".

The codes for Boosted Regression Tree (BRT) models are developed using the Jupyter Notebook environment (https://jupyter.org/). All required libraries can be easily installed using the pip install command.

Contents:

(1) "tick.ipynb" and "tbv.ipynb": These notebooks contain the complete source code for running the BRT models and performing all related analyses.

(2) "input/" directory: Includes all necessary input data files to reproduce the analyses.

(3) "Bowtie_TBV.sh" and "Bowtie_COI.sh": These notebooks are custom scripts developed to use the tool Bowtie2 to align sequencing reads to the reference sequences of TBV genomes or tick COI gene sequences. The mapped reads were further used for RPM calculation or species demarcation, respectively.

(4) "BLASTN_TBV.sh" and "DIAMOND_BLASTX_TBV.sh" : These notebooks are custom scripts developed to compare contigs assembled by Trinity against the GenBank non-redundant nucleotide and non-redundant protein databases to search homologous sequences. Based on the annotations of the output, all contigs annotated as prokaryotes and eukaryotes are filtered. 

If you encounter any bugs or issues with the code, please feel free to get in touch!
