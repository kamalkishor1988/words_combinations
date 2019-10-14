require_relative '../app/words_combinations.rb'

describe WordsCobinations do
  let(:number) { '2345678989' }
  let(:number1) { '2345678980' }
  let(:output) { [%w[BEG,LOST,ZUZ], %w[CEIL,OPT,ZUZ  CEIL,ORT,ZUZ]] }

  context 'Tests conversion of number into word/combinations of words ' do
    it 'returns true if number is valid' do
      expect(WordsCobinations.new(number).valid_number?).to be(true)
    end

    it 'returns false if number is invalid' do
      expect(WordsCobinations.new(number1).valid_number?).to be(false)
    end

    it 'Tests output of conversion with multiple words or combination of words' do
      expect(WordsCobinations.new(number).generate_all_possible_combinations).to match_array(output)
    end
  end
end
