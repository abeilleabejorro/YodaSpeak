require 'unirest'
require 'nokogiri'
require 'pry'
class WelcomeController < ApplicationController

  def index
  
  # These code snippets use an open-source library. http://unirest.io/ruby
response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=MONKEY+are+you+serious",
  headers:{
    "X-Mashape-Key" => "rULagzHKlBmshDQz8hV4u19Y8mNop1zAIEEjsn1t7ogD1nOaTN",
    "Accept" => "text/plain"
  }
  @sentence = response.raw_body
  end
end
