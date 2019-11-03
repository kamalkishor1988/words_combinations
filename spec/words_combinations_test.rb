require_relative '../app/words_combinations.rb'

describe WordsCobinations do
  let(:number) { '6686787825' }
  let(:number1) { '2282668687' }
  let(:number2) { '2345678980' }
  # let(:output) { [%w[BEG,LOST,ZUZ], %w[CEIL,OPT,ZUZ CEIL,ORT,ZUZ]] }
  let(:output) { [["NOUN,STRUCK", "ONTO,STRUCK"], ["MOTOR,TRUCK", "MOTOR,USUAL", "NOUNS,TRUCK", "NOUNS,USUAL"],
    ["MOT,OPT,PUCK", "MOT,OPT,RUCK", "MOT,OPT,SUCK", "MOT,ORT,PUCK", "MOT,ORT,RUCK", "MOT,ORT,SUCK", "NOT,OPT,PUCK", "NOT,OPT,RUCK", "NOT,OPT,SUCK", "NOT,ORT,PUCK", "NOT,ORT,RUCK", "NOT,ORT,SUCK", "OOT,OPT,PUCK", "OOT,OPT,RUCK", "OOT,OPT,SUCK", "OOT,ORT,PUCK", "OOT,ORT,RUCK", "OOT,ORT,SUCK"],
    ["MOT,OPTS,TAJ", "MOT,OPUS,TAJ", "MOT,ORTS,TAJ", "NOT,OPTS,TAJ", "NOT,OPUS,TAJ", "NOT,ORTS,TAJ", "OOT,OPTS,TAJ", "OOT,OPUS,TAJ", "OOT,ORTS,TAJ"],
    ["NOUN,PUP,TAJ", "NOUN,PUR,TAJ", "NOUN,PUS,TAJ", "NOUN,SUP,TAJ", "NOUN,SUQ,TAJ", "ONTO,PUP,TAJ", "ONTO,PUR,TAJ", "ONTO,PUS,TAJ", "ONTO,SUP,TAJ", "ONTO,SUQ,TAJ"],
    "MOTORTRUCK"] }
  # let(:output1) { [%w[BEG,LOST,ZUZ], %w[CEIL,OPT,ZUZ  CEIL,ORT,ZUZ]] }
  let(:output1) { [["ACT,AMOUNTS", "ACT,CONTOUR", "BAT,AMOUNTS", "BAT,CONTOUR", "CAT,AMOUNTS", "CAT,CONTOUR"],
     ["ACTA,MOUNTS"], ["ACT,BOO,TOTS", "ACT,BOO,TOUR", "ACT,CON,TOTS", "ACT,CON,TOUR", "ACT,COO,TOTS", "ACT,COO,TOUR", "BAT,BOO,TOTS", "BAT,BOO,TOUR", "BAT,CON,TOTS", "BAT,CON,TOUR", "BAT,COO,TOTS", "BAT,COO,TOUR", "CAT,BOO,TOTS", "CAT,BOO,TOUR", "CAT,CON,TOTS", "CAT,CON,TOUR", "CAT,COO,TOTS", "CAT,COO,TOUR"],
     ["ACT,BOOT,MUS", "ACT,BOOT,NUS", "ACT,BOOT,OUR", "ACT,COOT,MUS", "ACT,COOT,NUS", "ACT,COOT,OUR", "BAT,BOOT,MUS", "BAT,BOOT,NUS", "BAT,BOOT,OUR", "BAT,COOT,MUS", "BAT,COOT,NUS", "BAT,COOT,OUR", "CAT,BOOT,MUS", "CAT,BOOT,NUS", "CAT,BOOT,OUR", "CAT,COOT,MUS", "CAT,COOT,NUS", "CAT,COOT,OUR"],
     ["ACTA,MOT,MUS", "ACTA,MOT,NUS", "ACTA,MOT,OUR", "ACTA,NOT,MUS", "ACTA,NOT,NUS", "ACTA,NOT,OUR", "ACTA,OOT,MUS", "ACTA,OOT,NUS", "ACTA,OOT,OUR"],
     "CATAMOUNTS"] }
  context 'Tests conversion of number into word/combinations of words ' do
    it 'returns true if number is valid' do
      expect(WordsCobinations.new(number).valid_number?).to be(true)
    end

    it 'Tests output of conversion with multiple words or combination of words' do
      expect(WordsCobinations.new(number).generate_all_possible_combinations).to match_array(output)
    end

    it 'returns true if number is valid' do
      expect(WordsCobinations.new(number1).valid_number?).to be(true)
    end

    it 'Tests output of conversion with multiple words or combination of words' do
      expect(WordsCobinations.new(number1).generate_all_possible_combinations).to match_array(output1)
    end
  end

  context 'Checks phone number validity ' do
    it 'returns false if number is invalid' do
      expect(WordsCobinations.new(number2).valid_number?).to be(false)
    end
  end
end
