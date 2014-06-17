require 'test/unit'
require './media'

class MediaTests < Test::Unit::TestCase
  
  def setup
    @news = Media.new(10,'toronto',100,1000,0)
  end
  
  def test_media_initialization
    assert_equal('toronto', @news.location)
	assert_equal(10, @news.readership)
    assert_equal(100, @news.cashflow)
    assert_equal(1000, @news.savings)
  end
  
  def test_payday
    @news.payday
    assert_equal(1100, @news.savings)
  end
  
  def test_readership
	assert_equal(11, @news.add_reader)
	assert_equal(10, @news.remove_reader)
  end
  
end
