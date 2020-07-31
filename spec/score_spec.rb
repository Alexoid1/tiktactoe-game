require_relative '../lib/score.rb'
require_relative '../lib/player.rb'

describe Score do
    let (:score) {Score.new(player)}
    let(:board) {[[1, 2, 3], [4, 5, 6], [7, 8, 9]]}
    players = ['Peris', 'Alex']
    let (:player) do 
        player = Player.new
        player.players.push('Peris')
        player.players.push('Alex')
        player 
    end
    before { player.next_player }
    context 'It should return the array of players' do
        it 'Players in the game' do
            expect(score.players).to match(players)
        end

    end
   
end    