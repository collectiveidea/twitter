require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, :username => 'danielmorrison'
    assert_response :success
  end

end
