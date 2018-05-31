feature 'hit player' do
  scenario 'shows hit points' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Ben: 10 is deducted"
  end
end
