require 'benchmark'
require_relative 'words_combinations.rb'
puts 'Please enter the 10 digits mobile number :'
def check_validity(phone_number)
  if WordsCobinations.new(phone_number).valid_number? == true
    puts Benchmark.measure { p WordsCobinations.new(phone_number).generate_all_possible_combinations }
  else
    puts 'Please check entered number, it should have length 10 and it
    should not contain any English alphabet letters and 0 or 1.'
    check_validity(gets.chomp)
  end
end
check_validity(gets.chomp)
