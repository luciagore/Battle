feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Lucy's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_link 'Attack'
      click_button 'OK'
      expect(page).to have_content "Ben's turn"
    end
  end
end
