require 'spec_helper'

describe MasterBall do
  before {
    @master_ball = MasterBall.new
  }

  subject { @master_ball }

  describe 'catching pokemons' do

    it 'should catch two pokemons' do
      moves = "N"
      expected_pokemons = "2\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end

    it 'should catch four pokemons' do
      moves = "NESO"
      expected_pokemons = "4\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end

    it 'should catch two pokemons' do
      moves = "NSNSNSNSNS"
      expected_pokemons = "2\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end

    it 'should catch nine pokemons' do
      moves = "NNNNEEEEOOOOSSSS"
      expected_pokemons = "9\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end

    it 'should catch eleven pokemons' do
      moves = "NNNNEOSSSSSSSSNNNNEO"
      expected_pokemons = "11\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end

    it 'should catch sixteen pokemons' do
      moves = "NNNNEEEESSSSOOOO"
      expected_pokemons = "16\n"
      expect {
        subject.init_map(moves)
      }.to output(expected_pokemons).to_stdout
    end
  end

  describe 'input validation' do
    
    it 'should catch one pokemon if empty move' do
      expected_pokemons = "1\n"
      expect {
        subject.init_map("")
      }.to output(expected_pokemons).to_stdout 
    end

    it 'should catch one pokemon if null move' do
      expected_pokemons = "1\n"
      expect {
        subject.init_map(nil)
    }.to output(expected_pokemons).to_stdout
    end

    it 'should catch five pokemons ignoring invalid moves' do
      expected_pokemons = "5\n"
      move = "BLASTOISE"
      expect {
        subject.init_map(move)
    }.to output(expected_pokemons).to_stdout
    end

    it 'should catch two pokemons ignoring invalid moves' do
      expected_pokemons = "2\n"
      move = "N!?!?!?"
      expect {
        subject.init_map(move)
    }.to output(expected_pokemons).to_stdout
    end
  end
end
