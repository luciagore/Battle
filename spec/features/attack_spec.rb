feature 'reduce HP' do
  scenario 'attacking player 2 and reducing their HP' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Ben: 50HP"
  end
end
