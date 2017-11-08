house_elf <- read.csv("./data/houseelf_earlength_dna_data1.csv", header = TRUE)
house_elf <- .72 * 4.01
#6
library(stringr)
gc_content <- function(file){
  reads <- readFasta(paste0("./data/houseelf_earlength_dna_data1/", file))
  seq <- sread(reads)
  Gs <- str_to_lower(seq, "G")
  Cs <- str_to_upper(seq, "C")
  return(gc_content)
}
#7
get_size_class <- function(ear_length){
  # Calculate the size class for one or more ear lengths
  ear_lengths <- ifelse(ear_length > 10, "large", "small")
  return(ear_lengths)
}
