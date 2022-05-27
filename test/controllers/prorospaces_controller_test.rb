require 'test_helper'

class ProrospacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prorospaces_index_url
    assert_response :success
  end

end
