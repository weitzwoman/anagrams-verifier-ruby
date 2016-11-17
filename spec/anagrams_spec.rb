require('rspec')
require('anagrams')
require('pry')

describe('String#check_params') do

  it('Returns true if the inputted 2nd word is an anagram to the 1st') do
    expect('cat'.check_params(['act'])).to(eq([true]))
  end
  it('Returns false if the inputted 2nd word is not an anagram to the 1st') do
    expect('cat'.check_params(['cot'])).to(eq([false]))
  end
  it('Verifies multiple words are anagrams of first inputted word') do
    expect('cat'.check_params(['act', 'atc', 'tac'])).to(eq([true, true, true]))
  end
end
