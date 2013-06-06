require 'test_helper'
require 'nycjobs'

class NycjobsTest < ActiveSupport::TestCase

  test "sync" do
     connector  = Connectors::Nycjobs.new
     result     = connector.sync()
     assert_equal true, result.is_a?(Array)
     assert result.count > 0
  end

end