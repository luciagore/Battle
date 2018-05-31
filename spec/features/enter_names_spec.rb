feature 'Enter names' do
  scenario 'players fill in their names (in a form), submit that form, and see those names on-screen' do
    sign_in_and_play
    expect(page).to have_content ('Lucy vs. Ben')
  end
end
