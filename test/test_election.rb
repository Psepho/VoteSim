require 'test/unit'
require './election'

class ElectionTests < Test::Unit::TestCase
  
  def setup
    @election = Election.new
  end
  
  def test_election_initialization
    assert_equal(0, @election.week)
  end
  
  def test_voters_initialization
    @election.setup_voters
    puts @election.voters
  end
  
end
