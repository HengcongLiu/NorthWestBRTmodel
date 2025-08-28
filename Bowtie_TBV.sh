files=(
Library_ID
)

/local_path/bowtie2-build --threads 10 ref.fasta reference.mapping.fasta.bowtie2  ### Build a genome file

for file in "${files[@]}";
    do
    

	/local_path/bowtie2 --end-to-end --no-mixed --no-discordant -p 15 -x reference.mapping.fasta.bowtie2 -1 /local_path/"$file"_1.fq.gz -2 /local_path/"$file"_2.fq.gz -S "$file".sam
	/local_path/samtools view -bSF4 "$file".sam > "$file".bam
	/local_path/samtools sort -@ 20 "$file".bam -o "$file".sorted.bam
	/local_path/samtools rmdup "$file".sorted.bam "$file".sorted.rmdup.bam
	/local_path/samtools index "$file".sorted.rmdup.bam
	/local_path/samtools idxstats "$file".sorted.rmdup.bam > "$file"_mapping.txt
	rm "$file".sam
	rm "$file".bam
	rm "$file".sorted.bam

    
    done;   