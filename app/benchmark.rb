require 'benchmark'
require_relative 'words_combinations.rb'
puts 'Please enter the 10 digits mobile number :'
phone_number = gets.chomp
puts Benchmark.measure { p WordsCobinations.new(phone_number).generate_all_possible_combinations }
