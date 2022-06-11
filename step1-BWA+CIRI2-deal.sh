while read sample;do bwa mem -T 19 -t 8 genome.fa $sample.R1.fastq.gz $sample.R2.fastq.gz > $sample.align.sam;done<sample.list

while read sample;do CIRI2.pl -T 12 -F genome.fa -I $sample.align.sam -O $sample.CIRI.gtf;done<sample.list