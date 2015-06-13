require 'unirest'
require 'nokogiri'
require 'pry'
class YodasController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end

  def create
    @input = params["words"]

     skywalker = Yoda.new(@input)
     result = skywalker.yoda_api
     binding.pry
  end
end
