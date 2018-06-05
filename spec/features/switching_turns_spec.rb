# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Lucy's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content "Lucy's turn"
      expect(page).to have_content "Ben's turn"
    end
  end
end
