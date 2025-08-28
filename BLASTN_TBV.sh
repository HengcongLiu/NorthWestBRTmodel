/path/BLASTN  
        -query contig.fasta 
		-db Genbank non-redundant nt database
		-out file.m6
		-evalue 1E-1 
		-max_target_seqs 3 
		-num_threads 20 
		-outfmt "6 qseqid qlen sacc stitle pident length evalue sskingdoms staxids"
