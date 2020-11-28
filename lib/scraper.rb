require 'nokogiri'
require 'open-uri'

html = open("http://flatironschool.com/")
doc = Nokogiri::HTML(html)

courses = doc.css(".tout__label.heading.heading--level-4")[0] 

courses.each do |course|
    puts course.text.strip
  end 