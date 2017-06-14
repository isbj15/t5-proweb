require 'test_helper'

class InterestsControllerTest < ActionController::TestCase
  setup do
    @interest = interests(:one)
  end

  test "should create interest" do
    assert_difference('Interest.count') do
      post :create, interest: { name: @interest.name }
    end

    assert_redirected_to interest_path(assigns(:interest))
  end

  test "should update interest" do
    patch :update, id: @interest, interest: { name: @interest.name }
    assert_redirected_to interest_path(assigns(:interest))
  end

  test "should destroy interest" do
    assert_difference('Interest.count', -1) do
      delete :destroy, id: @interest
    end

    assert_redirected_to interests_path
  end
end
