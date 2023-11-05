# ADM Homework-2
## Group 5:
**Team members:** Jacopo Orsini, Camilla Brigandì, Arman Feili

1) Jacopo Orsini
   - Matricola: 2099929
   - Email addresses:
   - orsini.2099929@studenti.uniroma1.it

2) Camilla Brigandì
   - Matricola: 2055650
   - Email addresses:
   - brigandi.2055650@studenti.uniroma1.it

3) Arman Feili:
   - Matricola: 2101835
   - Email addresses:
   - armanfeili7@gmail.com
   - feili.2101835@studenti.uniroma1.it

## Data used
The datasets that we used, lighter_authors and lighter_books, have been taken from this link given in the GitHub repository https://github.com/Sapienza-University-Rome/ADM/blob/master/2023/Homework_2.
Besides these 2 datasets, we also used the files list.json and series.json, extracted from the dataset available at this link https://www.kaggle.com/datasets/opalskies/large-books-metadata-dataset-50-mill-entries.

## main.ipynb:
This file contains the answers to the following homework questions:
- Reserche Questions (RQs)
- AWS Question (AWSQ)
- Algorithmic Question (AQ)
- Command Line Question (CLQ)

## commandline_LLM.sh
The 'commandline_original.sh' file, includes 3 lines of code to retrive the data out of 'series.json' file.

##  commandline_original.sh
The 'commandline_LLM.sh' file, includes a set of code that sends an http reqiest as our prompt to the OpenAI API based on a API_KEY and get the result data as a text Apparently, we have successfully connected to the OpenAI API, and the prompt is functioning correctly, looping through the 'series.json' file. However, there seems to be an issue with reading and converting string values to integers.

