
# => This file uses the Yodaspeak API in order to take input
# => from the user in the form of a string (and only a string)
# => and return it in the words of the little green Jedi Master
# => Credit to: (https://www.mashape.com/ismaelc/yoda-speak)
 
# => required gems
require 'unirest'
require 'nokogiri'
 
# => getting user input
puts "Please enter a sentence to Yoda-ify."
userinput = gets
 
# => default placeholder value
# userinput = "You will learn how to speak like me someday."
 
# => formatting input
input = userinput.gsub! /\s+/, '+'
 
# => sending out to yodaspeak API
response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=#{input}",
  headers:{
    "X-Mashape-Key" => "YK9cMTQ2uJmshG36ASZtzZy3omeDp1ySVaQjsnGEhTDMjWWRkL",
    "Accept" => "text/plain"
  }
 
# => parsing response from API
parsee = Nokogiri::HTML(response.body)
parser = parsee.xpath('//*/body/p').first
 
# => output back to user, this is
yoda = parser.content
p yoda
 
# => end of file