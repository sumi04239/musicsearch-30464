# Imports the Google Cloud client library
require "google/cloud/language"

  
  # Instantiates a client
  language = Google::Cloud::Language.language_service

  # The text to analyze
  text = "どうもこんにちは"

  # Detects the sentiment of the text
  document = { content: text, type: :PLAIN_TEXT }
  response = language.analyze_sentiment document: document

  # Get document sentiment from response
  sentiment = response.document_sentiment

  puts "Text: #{text}"
  puts "Score: #{sentiment.score}, #{sentiment.magnitude}"
  

