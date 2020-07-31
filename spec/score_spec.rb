require_relative '../lib/score.rb'
require_relative '../lib/player.rb'

describe Score do
  let(:new_score) { Score.new(player) }
  let(:player) { Player.new }
  let(:board) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }

  context 'when the method is started' do
    it 'should be instance of Score' do
      expect(new_score).to be_instance_of Score
    end
  end
  context 'when the board method is called' do
    it 'should update the board' do
      expect(new_score.get_position(board, 2)).to eql([0, 1])
    end
  end
  context 'check for winnings' do
    it 'should check for vertical winner' do
      expect(new_score.check_winner([[1, '#', 3], [4, '#', 6], [7, '#', 9]], [2, 1])).to eql(true)
    end
    it 'should check for diagonal winner' do
      expect(new_score.check_winner([['#', '#', 3], [4, '#', 6], [7, '#', 9]], [0, 2])).to eql(true)
    end
    it 'should check for diagonal winner' do
      expect(new_score.check_winner([['#', 2, 3], [4, '#', 6], [7, 8, 9]], [2, 2])).to eql(true)
    end
  end
  context 'check for draw' do
    it 'should check true to draw' do
      expect(new_score.draw([['#', '*', '#'], ['*', '#', '*'], ['#', '*', '#']])).to eql(true)
    end
  end
end
