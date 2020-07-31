require_relative '../lib/score.rb'
require_relative '../lib/player.rb'

describe Score do
  let(:new_score) { Score.new(player) }
  let(:player) {Player.new}
  let(:board) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
  
  context 'when first created' do
    it 'should be instance of Score' do
      expect(new_score).to be_instance_of Score
    end
  end
end