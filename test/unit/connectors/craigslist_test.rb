require 'test_helper'
require 'craigslist'

class CraigslistTest < ActiveSupport::TestCase

  test "search" do
     craigslist = Connectors::Craigslist.new
     assert_equal 'craigslist search result', craigslist.search('xxx')
  end

end