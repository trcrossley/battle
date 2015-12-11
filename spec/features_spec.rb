describe 'user stories' do


before do
  allow(Kernel).to receive(:rand).and_return(10)
end

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
    expect(page).to have_content 'Camilla: 60'
  end

  #   As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  it 'So that users can win a game of Battle, he wants
  to attack Player 2, and I want to get a confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Camilla attacks Tristan for 10 damage!'
  end

  #   As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP
  it 'So player1 can start to win a game of Battle,
  attacks reduce HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Tristan: 60'
    expect(page).to have_content 'Tristan: 50'
  end

  #   As two Players,
  # So we can continue our game of Battle,
  # We want to switch turns
  it 'So we can continue our game of Battle,
  we want to switch turns' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Tristan: 50'
    click_button 'Attack'
    expect(page).to have_content 'Camilla: 50'
  end

  #   As a Player,
  # So I can Lose a game of Battle,
  # I want to see a 'Lose' message if I reach 0HP first
  it 'So I can lose a game of Battle,
  I want to see a lose message if I reach 0HP first' do
    sign_in_and_play
    fatal_attack
    expect(page).to have_content 'Game Over!'
  end

  # As a Player,
  # So I can play a suspenseful game of Battle,
  # I want all Attacks to deal a random amount of damage
  xit 'So I can play a suspenseful game of Battle,
  I want all Attacks to deal a random amount of damage' do
    sign_in_and_play
    click_button 'Attack'
    expect
  end

end
