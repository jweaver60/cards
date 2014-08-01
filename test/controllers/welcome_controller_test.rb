require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
   test "can get home page" do
     get :index
     assert_response :success
   end
end
