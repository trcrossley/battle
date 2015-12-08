# require 'capybara'
# require 'selenium-webdriver'
# include Capybara::DSL
# Capybara.default_driver = :selenium

describe 'user stories', :js => true do
  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  it 'So that users can play a personalised game of Battle,
  they want to Start by entering their names and seeing them ' do
    visit '/'
    fill_in 'nameA', :with => 'Tristan'
    fill_in 'nameB', :with => 'Camilla'
    click_button 'Submit'
    expect(page).to have_content?('Tristant', 'Camilla')
  end
end
