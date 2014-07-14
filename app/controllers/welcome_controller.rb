class WelcomeController < ApplicationController

  def analyze
    binding.pry
    url = CGI::escape(params[:url])
    response = HTTParty.get("http://access.alchemyapi.com/calls/url/URLGetRankedNamedEntities?url=" + url + "&apikey=" + ENV['ALCHEMY_API_KEY'] + "&outputMode=jsonp&sentiment=1&maxRetrieve=15&jsonp=MyCallback")

    render jsonp: response

  end
end
