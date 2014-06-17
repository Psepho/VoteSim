require 'test/unit'
require './voter'

class VoterTests < Test::Unit::TestCase
  
  def setup
    @voter = Voter.new(10,4,'toronto')
  end
  
  def test_voter_initialization
    assert_equal('toronto', @voter.location)
	assert_equal(10, @voter.age)
    assert_equal(4, @voter.income)
  end
  
  def test_issues
    @voter.add_issue('airport',1,1)
    assert_equal('airport', @voter.issue_set[ 'airport' ].name)
    @voter.change_issue('airport',0.1,-0.1)
	assert_equal(1.1, @voter.issue_set[ 'airport' ].position)
  end
  
end
