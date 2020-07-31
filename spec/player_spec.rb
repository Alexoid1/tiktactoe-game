require_relative '../lib/player.rb'
require_relative '../lib/score'

describe Player do
  let(:player){Player.new}
  let(:player_array){player.players=['Alex']}

    context 'this checks if subject is an instance of players' do
      it 'checks if it creates an instance of a class' do
        expect(player).to be_instance_of Player
      end
      it 'checks if the player is an array' do
        expect(player_array).to match Array
      end   
      it 'returns the index of the next player in the array' do
        expect(player.next_player).to eql(0)
      end          
    end
    context 'this returns the icons of the players' do
      it 'returns the icon of the player in the array' do
        expect(player.icon).to eq('#')
      end
    context 'this tests the switch method'do
      it 'switches from one player to the next' do
        expect{player.next_player}.to change{player_array<<('Alex')}.to(player_array<<('Peris'))
      end
    end
    end   
end