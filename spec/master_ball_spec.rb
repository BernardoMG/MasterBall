require 'spec_helper'

describe MasterBall do
  before {
    @master_ball = MasterBall.new
  }

  subject { @master_ball }

  describe 'catching pokemons' do

    it 'should catch two pokemons, one move' do
      moves = "N"
      expected_pokemons = "2\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end

    it 'should catch four pokemons, four moves' do
      moves = "NESO"
      expected_pokemons = "4\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end

    it 'should catch two pokemons, ten moves' do
      moves = "NSNSNSNSNS"
      expected_pokemons = "2\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end
  end

  describe 'tricky moves' do
    
    it 'should catch one pokemon, empty move' do
      expected_pokemons = "1\n"
      expect {
        subject.init_map("")
      }.to output(expected_pokemons).to_stdout 
    end

    it 'should catch one pokemon, null move' do
      expected_pokemons = "1\n"
      expect {
        subject.init_map(nil)
    }.to output(expected_pokemons).to_stdout
    end
  end
end
