feature 'Attacking' do
  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Lucy attacked Ben'
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'be attacked by Player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Ben attacked Lucy'
  end

  context 'when dealing set damage' do
    before do
      allow(Kernel).to receive(:rand).and_return(10)
    end
    # As Player 1,
    # So I can start to win a game of Battle,
    # I want my attack to reduce Player 2's HP by 10
    scenario 'reduce Player 2 HP by 10' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Ben: 60HP'
      expect(page).to have_content 'Ben: 50HP'
    end

    # As Player 1,
    # So I can start to lose a game of Battle,
    # I want Player 2's attack to reduce my HP by 10
    scenario 'reduce Player 1 HP by 10' do
      sign_in_and_play
      2.times { attack_and_confirm }
      expect(page).not_to have_content 'Lucy: 60HP'
      expect(page).to have_content 'Lucy: 50HP'
    end
  end

  # As a Player,
  # So I can play a suspenseful game of Battle,
  # I want all Attacks to deal a random amount of damage
  context 'when dealing random damage' do
    scenario 'reduce Player 2 HP by a random amount' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Ben: 60HP'
    end

    scenario 'reduce Player 1 HP by a random amount' do
      sign_in_and_play
      2.times { attack_and_confirm }
      expect(page).not_to have_content 'Lucy: 60HP'
    end
  end
end
