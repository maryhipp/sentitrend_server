class WelcomeController < ApplicationController
  def analyze
    response = httparty.get("https://access.alchemyapi.com/calls/url/URLGetRankedNamedEntities?url=" + params[:url] + "&apikey=" + ENV['ALCHEMY_API_KEY'] + "&outputMode=json&sentiment=1&maxRetrieve=15")
    render json: response

  end
end
