require 'test_helper'
require 'nycjobs'

class NycjobsTest < ActiveSupport::TestCase

  test "search" do
     connector = Connectors::Nycjobs.new
     assert_equal true, connector.search(Resume.new).is_a?(Array)
  end

end