require 'test_helper'

class CiviliansControllerTest < ActionController::TestCase
  setup do
    @civilian = civilians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:civilians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create civilian" do
    assert_difference('Civilian.count') do
      post :create, civilian: { address: @civilian.address, city: @civilian.city, first_name: @civilian.first_name, last_name: @civilian.last_name }
    end

    assert_redirected_to civilian_path(assigns(:civilian))
  end

  test "should show civilian" do
    get :show, id: @civilian
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @civilian
    assert_response :success
  end

  test "should update civilian" do
    patch :update, id: @civilian, civilian: { address: @civilian.address, city: @civilian.city, first_name: @civilian.first_name, last_name: @civilian.last_name }
    assert_redirected_to civilian_path(assigns(:civilian))
  end

  test "should destroy civilian" do
    assert_difference('Civilian.count', -1) do
      delete :destroy, id: @civilian
    end

    assert_redirected_to civilians_path
  end
end
