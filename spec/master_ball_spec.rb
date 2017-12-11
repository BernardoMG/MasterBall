require 'spec_helper'

describe MasterBall do
  before {
    @master_ball = MasterBall.new
  }

  subject { @master_ball }

  describe 'catching some pokemons' do

    it 'should catch only two pokemons' do
      moves = "N"
      expected_pokemons = "2\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end
  end
end
