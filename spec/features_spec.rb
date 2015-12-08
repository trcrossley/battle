describe 'user stories' do

  # session = Capybara::Session.new :selenium

  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  it 'So that users can play a personalised game of Battle,
  they want to Start by entering their names and seeing them ' do
    sign_in_and_play
    expect(page).to have_content("Camilla")
    expect(page).to have_content("Tristan")
  end

  #   As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  it 'So users can see how close they are to winning, they want
  to see their Hit Points' do
    sign_in_and_play
    expect(page).to have_content 'Camilla: 60/60'
  end

  #   As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  it 'So that user can win a game of Battle, he wants
  to attack Player 2, and I want to get a confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Someone attacks!'
  end

end
