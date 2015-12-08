# require 'capybara'
# require 'selenium-webdriver'
# include Capybara::DSL
# Capybara.default_driver = :selenium

describe 'user stories', :type => :feature do

  # session = Capybara::Session.new :selenium
before do
  visit '/'
  fill_in 'nameA', :with => 'Tristan'
  fill_in 'nameB', :with => 'Camilla'
  click_button 'Play!'
end
  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  it 'So that users can play a personalised game of Battle,
  they want to Start by entering their names and seeing them ' do
    expect(page).to have_content("Camilla")
    expect(page).to have_content("Tristan")
  end

  it 'So users can see how close they are to winning, they want
  to see their Hit Points' do
    expect(page).to have_content 'Camilla: 60/60'
  end
end
