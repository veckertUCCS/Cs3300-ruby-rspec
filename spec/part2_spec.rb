# frozen_string_literal: true

require_relative '../lib/ruby_intro'

describe 'Ruby intro part 2' do
  describe '#hello' do
    it 'should be defined' do
      expect { hello('Testing') }.not_to raise_error#::NoMethodError)
    end
  
    it 'The hello method returns the correct string [3 points]', points: 3 do
      expect(hello('Dan').class).to eq(String)
      expect(hello('Dan')).to eq('Hello, Dan'), 'Incorrect results for input: "Dan"'
      expect(hello('BILL')).to eq('Hello, BILL'), 'Incorrect results for input: "BILL"'
      expect(hello('Mr. Ilson')).to eq('Hello, Mr. Ilson'), 'Incorrect results for input: "Mr. Ilson"'
    end
  end
  
  describe '#starts_with_consonant?' do     #This line describes the functionality being tested: determining if a string starts with a consonant
    it 'should be defined' do               #A test to see if the function is defined
      expect { starts_with_consonant?('d') }.not_to raise_error#::NoMethodError)  #The function call should not raise a no method error
    end
    it 'classifies true cases [1 point]' , points: 1 do #The function can handle cases where the string starts with a consonant
      expect(starts_with_consonant?('v')).to be_truthy, "'v' is a consonant"    #A function call with the parameter 'v' should return true
      %w[v vest Veeee crypt].each do |string|           #Loop through several test parameters
        expect(starts_with_consonant?(string)).to be_truthy, "Incorrect results for input: \"#{string}\""   #These passed parameters should all returh true
      end
    end
    it 'classifies false cases [1 point]' , points: 1 do  #The function can handle cases where the string does not start with a consonant
      expect(starts_with_consonant?('a')).to be_falsy, "'a' is not a consonant"   #A function call with the parameter 'a' should return false
      %w[asdfgh Unix].each do |string|                #Loop through several test parameters
        expect(starts_with_consonant?(string)).to be_falsy, "Incorrect results for input: \"#{string}\""  #These passed parameters should all return false
      end
    end
    it 'works on the empty string [0.5 points]' , points: 0.5 do  #The function should work with an empty string
      expect(starts_with_consonant?('')).to be_falsy        #A function call with an empty string should returh false
    end
    it 'works on nonletters [0.5 points]' , points: 0.5 do        #The function should work with strings that start with nonletter characters
      expect(starts_with_consonant?('#foo')).to be_falsy        #A function call with a string starting with a '#" should return false
    end
  end
  
  describe '#binary_multiple_of_4?' do
    it 'should be defined' do
      expect { binary_multiple_of_4?('yes') }.not_to raise_error#::NoMethodError)
    end
    it 'classifies valid binary numbers [3 points]' , points: 3 do
      %w[1010101010100 0101010101010100 100 0].each do |string|
        expect(binary_multiple_of_4?(string)).to be_truthy,  "Incorrect results for input: \"#{string}\""
      end
      %w[101 1000000000001].each do |string|
        expect(binary_multiple_of_4?(string)).not_to be_truthy,  "Incorrect results for input: \"#{string}\""
      end
    end
    it 'rejects invalid binary numbers [1 point]' , points: 1 do
      expect(binary_multiple_of_4?('a100')).to be_falsy, "'a100' is not a valid binary number!"
      expect(binary_multiple_of_4?('')).to be_falsy, 'The empty string is not a valid binary number!'
    end
  end
end
