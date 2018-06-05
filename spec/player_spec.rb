require './lib/player'

describe Player do
  subject(:lucy) { Player.new('Lucy') }
  subject(:ben) { Player.new('Ben') }

  describe '#name' do
   it 'returns the name' do
     expect(lucy.name).to eq 'Lucy'
   end
 end

 describe '#hit_points' do
   it 'returns the hit points' do
     expect(lucy.hit_points).to eq described_class::DEFAULT_HIT_POINTS
   end
 end

 describe '#damage' do
   it 'reduces the player hit points' do
     expect { lucy.damage(10) }.to change { lucy.hit_points }.by(-10)
   end
 end
end
