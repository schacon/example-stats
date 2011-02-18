#!/usr/bin/env ruby

puts "Stats from the stopwords file"
puts "-----------------------------"

words = File.read('stopwords.txt').split(',')
puts "Number of words: " + words.size.to_s

avg = words.inject(0.0) { |sum, w| sum + w.size.to_f } / words.size
puts "Average word size: " + avg.to_s

vowels = ['a','e','i','o','u']
vcount = words.select { |word| vowels.include?(word[0,1]) }.size
puts "Words that start with a vowel: " + vcount.to_s

