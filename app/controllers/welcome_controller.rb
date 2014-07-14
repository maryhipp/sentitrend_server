class WelcomeController < ApplicationController
  def index
  end

  def analyze
    url = CGI::escape(params[:url])
    response = HTTParty.get("http://access.alchemyapi.com/calls/url/URLGetRankedNamedEntities?url=" + url + "&apikey=" + ENV['ALCHEMY_API_KEY'] + "&outputMode=jsonp&sentiment=1&maxRetrieve=15&jsonp=MyCallback")

    render json: response

  end
end
