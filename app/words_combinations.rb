# To convert phone number to words or combinations of words
class WordsCobinations
  attr_reader :number, :words, :min_word_length
  LETTERS = { '2' => %w[A B C], '3' => %w[D E F], '4' => %w[G H I],
              '5' => %w[J K L], '6' => %w[M N O], '7' => %w[P Q R S],
              '8' => %w[T U V], '9' => %w[W X Y Z] }.freeze
  def initialize(number, min_word_length)
    @number = number
    @min_word_length = min_word_length
    @words = []
  end

  def valid_number?
    return false if number.length != 10 ||
                    number.chars.map { |digit| (digit == '1' || digit == '0') }.include?(true)
    true
  end

  def extract_dic_words
    dic_file_path = Dir.pwd + '/data/dictionary.txt'
    @dic_words = File.read(dic_file_path).split
  end

  def form_combination(matched_arrays)
    if matched_arrays.size == 1
      words << matched_arrays.join(',')
    else
      words << matched_arrays.shift.product(*matched_arrays).map { |word_array| word_array.join(',') }
    end
  end

  def extract_matching_words(*chars_array)
    matching_words = []
    chars_array.each do |chars|
      probable_words = chars.shift.product(*chars).map(&:join)
      matching_words << (probable_words & @dic_words)
    end
    matching_words.any?(&:empty?) ? return : form_combination(matching_words)
  end

  def generate_combination(length)
    index = min_word_length
    while index < (length - (min_word_length - 1))
      first_set  = @number_keys[0...index]
      second_set = @number_keys[index...length]
      extract_matching_words(first_set, second_set)
      index += 1
    end
  end

  def extract_words_array
    @number_keys = number.chars.map { |number| LETTERS[number] }
    generate_combination(number.length)
  end

  def generate_two_sets_combinations
    return unless valid_number?
    extract_dic_words
    extract_words_array
  end

  def generate_one_set_combination
    extract_matching_words(@number_keys[0..9])
  end

  def generate_three_sets_combinations
    combinations = [[0..2, 3..5, 6..9], [0..2, 3..6, 7..9], [0..3, 4..6, 7..9]]
    combinations.each do |combination|
      extract_matching_words(@number_keys[combination[0]],
                             @number_keys[combination[1]],
                             @number_keys[combination[2]])
    end
  end

  def generate_all_possible_combinations
    generate_two_sets_combinations
    generate_three_sets_combinations if min_word_length == 3
    generate_one_set_combination
    words.uniq
  end
end
