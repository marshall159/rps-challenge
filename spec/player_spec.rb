require 'spec_helper'
require_relative './../models/player'

describe Player do
  describe '#choice' do
    it 'allows setting and getting the players choice' do
      subject.choice = 'rock'
      expect(subject.choice).to eq('rock')
    end
  end
  
# describe '#play_hand' do
#   it 'plays a hand and returns the result: win, lose or draw' do
#
#   end
# end

end
