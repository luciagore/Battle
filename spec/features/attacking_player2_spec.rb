feature 'attacking player 2' do
  scenario 'attacking player 2' do
    sign_in_and_play
    expect(page).to have_content "Lucy attacks Ben"
  end
end
