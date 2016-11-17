require('rspec')
require('anagrams')
require('pry')

describe('String#check_params') do

  it('Returns true if the inputted 2nd word is an anagram to the 1st') do
    expect('cat'.check_params(['act'])).to(eq("act is true"))
  end
  it('Returns false if the inputted 2nd word is not an anagram to the 1st') do
    expect('cat'.check_params(['cot'])).to(eq("cot is false"))
  end
  it('Verifies multiple words are anagrams of first inputted word') do
    expect('cat'.check_params(['act', 'atc', 'tac'])).to(eq("act is true, atc is true, tac is true"))
  end
end
