#$1 Ref
#$2 R1
#$3 R2
#$4 OutPrefix

#fasta -f
#---------------------------- remap reads  --------------------------------------------
echo $(date)
echo "Step - Bowtie For reads remapping"
bowtie2 \
    -p 10 --no-mixed --no-discordant --end-to-end -k 2 \
    -x $1 \
    -1 $2 \
    -2 $3 \
    2> ${4}.bowtie2.log \
    | $samtools view -h -b -F4 \
    > ${4}.bam
samtools sort \
    ${4}.bam > ${4}-s.bam
samtools coverage \
    ${4}-s.bam > ${4}-s.bam.cvg
samtools depth -a \
    ${4}-s.bam > ${4}-s.bam.depth

echo "Finish"
