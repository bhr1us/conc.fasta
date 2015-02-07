#Concatenate a multifasta file into single fasta file

conc.fasta <- function(input_file, output_file, header) {
  library(seqinr)
  x <- read.fasta(file = input_file, seqonly=TRUE, strip.desc=TRUE)
  y <- toString(x)
  z <- gsub(",", "", y)
  zz <- gsub(" ", "", z)
  write.fasta(zz, header, output_file)
  out <- paste(output_file, "has been written to root directory.", collapse=" ")
  print(out)
}


