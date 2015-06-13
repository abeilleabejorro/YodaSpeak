class Yoda < ActiveRecord::Base

  def initialize(arg) 
    @arg = arg
  end

  def yoda_api
      # These code snippets use an open-source library. http://unirest.io/ruby
response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=#{@arg}",
  headers:{
    "X-Mashape-Key" => "rULagzHKlBmshDQz8hV4u19Y8mNop1zAIEEjsn1t7ogD1nOaTN",
    "Accept" => "text/plain"
  }
  @sentence = response.raw_body
  end
end
