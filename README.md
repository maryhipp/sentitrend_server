##Senti-Trend Server

#Overview

This Rails app is the back-end for the [Senti-Trend chrome extension] (http:github.com/maryhipp/sentitrend_extension "Senti-Trend chrome extension"). API keys are not secure within the source for a chrome extension, so it was necessary to create a back-end environment where it could be hidden. This back-end makes the API call to the Alchemy API to retrieve the Entity Sentiment Analysis data for the current URL being visited, and sends this back to the chrome extension via an AJAX request.

#Technologies Used

* Ruby on Rails
* [Figaro gem](https://github.com/laserlemon/figaro "Figaro gem") for environmental variable
* [HTTParty gem](https://github.com/jnunemaker/httparty "HTTParty gem") for API request
