feature 'attacking player 2' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Lucy attacked Ben"
  end
end
