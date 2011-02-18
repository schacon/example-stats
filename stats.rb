#!/usr/bin/env ruby

words = File.read('stopwords.txt').split(',')
puts "Number of words: ".ljust(25) + words.size.to_s

avg = words.inject(0.0) { |sum, w| sum + w.size.to_f } / words.size
puts "Average word size: ".ljust(25) + avg.to_s

vowels = ['a','e','i','o','u']
vcount = words.select { |word| vowels.include?(word[0,1]) }.size
puts "Words that start with a vowel: " + vcount.to_s

