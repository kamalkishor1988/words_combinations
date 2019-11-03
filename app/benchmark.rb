require 'benchmark'
require_relative 'words_combinations.rb'
puts 'Please enter the 10 digits mobile number :'
phone_number = gets.chomp
puts 'Please enter minimum word length :'
min_word_length = gets.chomp.to_i
def check_validity(phone_number, min_word_length)
  word_combination = WordsCobinations.new(phone_number, min_word_length)
  if word_combination.valid_number? == true && min_word_length >= 3 && min_word_length <= 10
    puts Benchmark.measure { p word_combination.generate_all_possible_combinations }
  else
    puts 'Please check entered number, it should have length 10 AND it
    should not contain any English alphabet letters and digits either 0 or 1 AND
    it should have minimum word length i.e 3'
    puts 'Please enter the 10 digits mobile number :'
    phone_number = gets.chomp
    puts 'Please enter minimum word length :'
    min_word_length = gets.chomp.to_i
    check_validity(phone_number, min_word_length)
  end
end
check_validity(phone_number, min_word_length)
