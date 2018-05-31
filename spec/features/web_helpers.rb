def sign_in_and_play
  visit('/')
  fill_in :player1name, with: "Lucy"
  fill_in :player2name, with: "Ben"
  click_button 'Submit'
end
