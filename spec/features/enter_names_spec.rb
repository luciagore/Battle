feature 'Enter names' do
  scenario 'players fill in their names (in a form), submit that form, and see those names on-screen' do
    visit('/')
    fill_in 'player1name', with: "Lucy"
    fill_in 'player2name', with: "Ben"
    click_on 'Submit'
    expect(page).to have_content ('Lucy vs. Ben')
  end
end
