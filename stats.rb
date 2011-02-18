#!/usr/bin/env ruby

words = File.read('stopwords.txt').split(',')
puts "Number of words: " + words.size.to_s

avg = words.inject(0.0) { |sum, w| sum + w.size.to_f } / words.size
puts "Average word size: " + avg.to_s

