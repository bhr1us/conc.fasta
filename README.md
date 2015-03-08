#conc.fasta.R


conc.fasta.R is a R script to parse multi-fasta file to a single fasta file.  This is useful for converting a file containg contigs to a single concatenated sequence (e.g. a single fasta file is required input for kSNP and BRIG).  This function can be called as follows:

```
source("conc.fasta.R")
conc.fasta ("input_file", "output_file", "header")
```

**input_file** is the name of the multifasta file

**output_file** is the name of the single fasta file

**header** is the name of the single fasta header line (i.e. text after the >)

You can convert multiple files at the same time using mapply:

```
# define the input files, output files, and headers
a <- c("input_file_1", "input_file_2", ...)
b <- c("output_file_1", "output_file_2", ...)
c <- c("header_1", "header_2", ...)

# use mapply to run the function for multiple input files
mapply(conc.fasta, a, b, c)
```


