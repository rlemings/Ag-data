house_elf <- read.csv("./data/houseelf_earlength_dna_data.csv", header = TRUE)


#6

gc_content <- function(seq){
  library(stringr)
  GC <- str_to_upper(seq)
  Gs <- str_count(GC, "G")
  Cs <- str_count(GC, "C")
  seq_length <- str_length(GC)
  gc_content <- (Gs + Cs)/ seq_length * 100
  return(gc_content)
}
#7
get_size_class <- function(ear_length){
  # Calculate the size class for one or more ear lengths
  ear_lengths <- ifelse(ear_length > 10, "large", "small")
  return(ear_lengths)
}
 
data_frame_ID <- 
house_elf %>% 
  mutate( gc_cont = gc_content(seq = dnaseq),
        get_size = get_size_class(ear_length = earlength),
        dnaseq = NULL,
        earlength = NULL)
