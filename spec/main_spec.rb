require_relative '../bin/main.rb'

describe _input do
  let(:greeting){inp= gets.to_chomp}
  let(:inp) {'Please enter a valid input'}

  it 'should display a message' do
    expect(greeting._input).to have_text(inp)
  end
end