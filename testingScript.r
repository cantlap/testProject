1+1
library(devtools)
#!testing file scripting

library(SNPRelate)
library(SeqArray)


# ? adding a comment to commit changes


start_file_name <- "split.chr"
end_file_name <- ".gds"


for (chr in 1:22){
    
    full_file_name <- paste(start_file_name, chr, end_file_name, sep = "")
    fileName <- seqOpen(full_file_name)

    # open an example dataset (HapMap)
    genofile <- fileName


    
    snpset <- snpgdsSelectSNP(genofile, missing.rate=0.95)
    out_file_name <- paste("test", chr, "file", sep = "_")
    setwd("..")
    setwd(paste0(getwd(), "/grm_files"))
    seqGDS2BED(genofile, out.fn = out_file_name, multi.row=FALSE, verbose=TRUE)
    setwd("..")
    setwd(paste0(getwd(), "/input_agds_files"))

    # close the genotype file
    seqClose(genofile)
}