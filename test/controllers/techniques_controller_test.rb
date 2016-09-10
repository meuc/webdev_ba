require 'test_helper'

class TechniquesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get techniques_index_url
    assert_response :success
  end

end
