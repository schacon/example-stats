#!/usr/bin/env ruby

puts "Stats from the stopwords file"
puts "-----------------------------"

words = File.read('stopwords.txt').split(',')
puts "Number of words: ".ljust(25) + words.size.to_s

avg = words.inject(0.0) { |sum, w| sum + w.size.to_f } / words.size
puts "Average word size: ".ljust(25) + avg.to_s

vowels = ['a','e','i','o','u']
vcount = words.select { |word| vowels.include?(word[0,1]) }.size
puts "Vowel starting words: ".ljust(25) + vcount.to_s

