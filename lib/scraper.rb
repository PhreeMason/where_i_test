require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/team")
doc = Nokogiri::HTML(html)

instructors = doc.css("#instructors .team-holder .person-box")

instructors.each do |instructor|
  puts "Flatiron School <3 " + instructor.css("h2").text
end
