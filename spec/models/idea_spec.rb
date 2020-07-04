require 'spec_helper'


describe Idea do
  before(:all) do
    @user = User.new(:name => 'Mark E. Mark', :email => 'mharris@example.com', :password => 'password', :launchpad=>false)
    @lp_user = User.new(:name => 'Launchpad User', :email => 'mharris@example.com', :password => 'password', :launchpad=> true)
    # @user.save
    # @lp_user.save
  end

  before(:each) do
    @idea = Idea.new
  end

  it 'has a high level concept' do
    @idea.high_level_concept = 'this is my concept'
    @idea.high_level_concept.should eq('this is my concept')
  end

  it 'starts as a spark' do
    @idea.high_level_concept = 'this is my concept'
    @idea.state_name.should eq(:spark)
  end

  it 'moves to proposed if has > 5 votes, a concept, a sponsor, customers, a problem, and a solution' do
    @idea.launchpad_sponsor = @lp_user
    @idea.user = @user
    @idea.customer_segments = 'these are a set of customers'
    @idea.problem = 'this is a problem'
    @idea.solution = 'this is a solution'
    @idea.unique_value_prop = 'this is a value prop'
    @idea.high_level_concept = 'this is a concept'
    (0..5).each do |i|
      u = User.new(:name => "User #{i}", :password => 'password', :email => "m#{i}@example.com", :launchpad => false)
      v = @idea.votes.build(:user => u, :score => 1)
      v.should be_valid
    end
    @idea.submit
    @idea.state_name.should eq(:proposed)
  end

end
