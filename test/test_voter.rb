require 'test/unit'
require './voter'
require './issues'

class VoterTests < Test::Unit::TestCase
  
  def setup
    @voter = Voter.new(10,4, 1,'toronto',0, 0,0.1)
    @rich_voter = Voter.new(10,4, 1,'toronto',100, 0, 0.1)
  end
  
  def test_voter_initialization
    assert_equal('toronto', @voter.location)
	assert_equal(10, @voter.age)
    assert_equal(4, @voter.income)
    assert_equal(0, @voter.savings)
	assert_equal(1, @voter.engagement)
    assert_equal(0, @rich_voter.savings)
  end
  
  def test_issues
    @voter.add_issue('airport',1,1)
	@voter.add_issue('waste',0.1,0.1)
    assert_equal('airport', @voter.issue_set[ 'airport' ].name)
    @voter.change_issue('airport',0.1,-0.1)
	assert_equal(1.1, @voter.issue_set[ 'airport' ].position)
	@voter.change_issue('airport',-0.1,0.1)
	other_issue_set = Hash.new
	other_issue_set[ 'airport' ] = Issue.new('airport',0.8,0.6)
	other_issue_set[ 'waste' ] = Issue.new('waste',0.8,0.6)
	@voter.measure_alignment(other_issue_set)
  end
  
  def test_payday
    @rich_voter.payday
    @voter.payday
    assert_equal(100, @rich_voter.savings)
    assert_equal(0, @voter.savings)
  end
  
end
