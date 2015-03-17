require 'test_helper'

class BlockTemplatesControllerTest < ActionController::TestCase
  test "should get choose_block" do
    get :choose_block
    assert_response :success
  end

end
