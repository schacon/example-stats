#!/usr/bin/env ruby

words = File.read('stopwords.txt').split(',')
puts "Number of words: " + words.size.to_s

