require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert.alert-danger'
    
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name:  "Example User",
                                         email: "user@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.empty?
<<<<<<< HEAD
<<<<<<< HEAD
    assert is_logged_in?
=======
    assert is_logged_in? #figure out the error later
    
>>>>>>> b6465810ee03f8559efbc909ebaef429253bf0b2
=======
    assert is_logged_in? #figure out the error later
    
>>>>>>> 3a9ad49db4325fc4605778a404f4f56ed23440a0
  end
end