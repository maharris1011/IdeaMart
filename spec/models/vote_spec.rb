require 'spec_helper'

describe Vote do
  before(:each) do
    @idea = Idea.new(high_level_concept: 'this is a concept')
    @user = User.new(name: 'mark', password: 'password', email: 'mark@email.com', launchpad: false)
  end

  it 'is valid' do
    v = Vote.new
    v.should be_valid
  end

  it 'handles up-votes' do
    v = Vote.new(user: @user, idea: @idea, score: 1)
    v.score.should eq(1)
  end

  it 'handles down-votes' do
    v = Vote.new(user: @user, idea: @idea, score: -1)
    v.score.should eq(-1)
  end
end
