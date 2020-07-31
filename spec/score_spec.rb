require_relative '../lib/score.rb'
require_relative '../lib/player.rb'

describe Score do
  let(:new_score) { Score.new(player) }
  let(:player) {Player.new}
  let(:board) {[[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
  
  context 'when the method is started' do
    it 'should be instance of Score' do
      expect(new_score).to be_instance_of Score
    end
  end
  context 'when the board method is called' do
    it 'should display the board' do
      expect(new_score.get_position(board,2)).to eql([0,1])
    end
  end
  context 'check for winnings' do
    it 'should check for diagonal winner' do
      expect(new_score.check_winner([[1, '#', 3], [4, '#', 6], [7,'#', 9]], [2,1])).to eql(true)    
    end
  end
end
