require 'test_helper'

class CivilianInterestsControllerTest < ActionController::TestCase
  setup do
    @civilian_interest = civilian_interests(:one)
  end

  test "should create civilian_interest" do
    assert_difference('CivilianInterest.count') do
      post :create, civilian_interest: { civilian_id: @civilian_interest.civilian_id, interest_id: @civilian_interest.interest_id }
    end

    assert_redirected_to civilian_interest_path(assigns(:civilian_interest))
  end

  test "should update civilian_interest" do
    patch :update, id: @civilian_interest, civilian_interest: { civilian_id: @civilian_interest.civilian_id, interest_id: @civilian_interest.interest_id }
    assert_redirected_to civilian_interest_path(assigns(:civilian_interest))
  end

  test "should destroy civilian_interest" do
    assert_difference('CivilianInterest.count', -1) do
      delete :destroy, id: @civilian_interest
    end

    assert_redirected_to civilian_interests_path
  end
end
