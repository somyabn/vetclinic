require 'test_helper'

class DoctersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
