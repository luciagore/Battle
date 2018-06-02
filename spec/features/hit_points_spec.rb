feature 'hit player' do
  scenario 'shows hit points' do
    sign_in_and_play
    expect(page).to have_content "Ben: 60HP"
    click_link 'Attack'
  end
  scenario 'shows hit points at the end of the game' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Ben: 50HP"
  end
end
