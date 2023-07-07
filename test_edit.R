source('R/ODDPub.R')
source('R/ODDPub_functions.R')
PDF_text_sentences <- oddpub::pdf_load("output/")
open_data_results <- oddpub::open_data_search(PDF_text_sentences)
print(open_data_results)

files <- (Sys.glob("output/*.txt"))


for(file in files)
{
  open_data_results <- oddpub::open_data_search(file)
  # data_code <- rt_data_code(file)
  print(open_data_results)
}
