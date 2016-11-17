require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagrams path', {:type => :feature}) do
  it('processes the user entry and returns whether an anagram was found') do
    visit('/')
    fill_in('first_word', :with => "cat")
    fill_in('second_word', :with => "act")
    click_button('Anagrams')
    save_and_open_page
    expect(page).to have_content([true])
  end

  it('processes the user entry and returns whether an anagram was found') do
    visit('/')
    fill_in('first_word', :with => "cat")
    fill_in('second_word', :with => "dog")
    click_button('Anagrams')
    save_and_open_page
    expect(page).to have_content([false])
  end

  it('processes the user entry and returns whether an anagram was found') do
    visit('/')
    fill_in('first_word', :with => "cat")
    fill_in('second_word', :with => "act")
    fill_in('third_word', :with => "tac")
    click_button('Anagrams')
    save_and_open_page
    expect(page).to have_content([true, true])
  end

  it('processes the user entry and returns whether an anagram was found') do
    visit('/')
    fill_in('first_word', :with => "cat")
    fill_in('second_word', :with => "act")
    fill_in('third_word', :with => "tic")
    click_button('Anagrams')
    save_and_open_page
    expect(page).to have_content([true, false])
  end

  it('processes the user entry and returns whether an anagram was found') do
    visit('/')
    fill_in('first_word', :with => "cat")
    fill_in('second_word', :with => "act")
    fill_in('third_word', :with => "tac")
    fill_in('fourth_word', :with => "tic")
    click_button('Anagrams')
    save_and_open_page
    expect(page).to have_content([true, true, false])
  end
end
