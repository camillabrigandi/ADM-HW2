#!/bin/bash

# OpenAI API key
API_KEY="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"

# Prompt to send to ChatGPT
TEXT='{
  "text": "Generate code to store data from 'series.json' in an array of objects. Please write a code snippet that reads the 'series.json' file, processes the data, and stores it in an array of objects named 'data'. The data should be transformed as follows: - Convert the 'id' field to an integer. - Convert the 'books_count' field in each 'works' object to an integer. - Calculate the 'total_books_count' for each 'works' array by summing the 'books_count' values. Your code should produce the following output format: [ { 'id': integer, 'title': string, 'total_books_count': integer }, ... ] Store the array in a variable named 'data'. Generate code to sort the 'data' array of objects based on the 'total_books_count' property in descending order. The 'data' array has the following structure: [ { 'id': integer, 'title': string, 'total_books_count': integer }, ... ] Your code should use the 'jq' tool to perform the sorting operation and store the sorted result in a variable named 'sorted_data'. The sorted data should be in descending order based on the 'total_books_count' property. Store the array in a variable named 'sorted_data'. Generate code to display the first 5 elements of a sorted array. Your code should use the 'jq' tool to extract and display the first 5 elements of the sorted array in a human-readable format."
}'

# Read data from series.json and save it to a temporary file
cat series.json | jq '.series' > temp.json

# Split the JSON data into smaller chunks
jq -c '.[]' temp.json | while read -r data; do
  # Send a POST request to the OpenAI API with each chunk
  data_report=$(curl -X POST -H "Authorization: Bearer $API_KEY" -H "Content-Type: application/json" -d "{\"text\": $data, \"messages\": [$TEXT]}" "https://api.openai.com/v1/engines/davinci-codex/completions")
  
  # Extract the response from the API for each chunk
  response=$(echo "$data_report" | jq -r '.choices[0].text')
  
  echo "$response"
done

# Clean up the temporary file
rm temp.json
