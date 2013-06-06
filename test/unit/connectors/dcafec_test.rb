require 'test_helper'
require 'dcafec'

class DcafecTest < ActiveSupport::TestCase

  test "sync" do
     connector  = Connectors::Dcafec.new
     result     = connector.sync()
     assert_equal true, result.is_a?(Array)
     assert result.count > 0
  end

end