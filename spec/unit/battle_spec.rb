feature 'Enter names' do

  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content("Camilla")
    expect(page).to have_content("Tristan")
  end

end

feature 'Hit points' do

  it 'has hit points default value to 60' do
    sign_in_and_play
    expect(page).to have_content 'Camilla: 60'
  end

end
