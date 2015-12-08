def sign_in_and_play
  visit '/'
  fill_in 'nameA', :with => 'Tristan'
  fill_in 'nameB', :with => 'Camilla'
  click_button 'Play!'
end
