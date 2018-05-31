require './player'

describe Player do
  subject(:lucy) { Player.new('Lucy') }
  subject(:ben) { Player.new('Ben') }

  describe '#name' do
    it 'returns the name' do
      expect(lucy.name).to eq 'Lucy'
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(ben).to receive(:reduce_HP)
      lucy.attack(ben)
    end
  end

  describe '#reduce_HP' do
    it 'attacks a player' do
      expect { lucy.attack(ben) }.to change { ben.hit_points }.by(-10)
    end
  end
end
