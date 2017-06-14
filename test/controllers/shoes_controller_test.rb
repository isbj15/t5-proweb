require 'test_helper'

class ShoesControllerTest < ActionController::TestCase
  setup do
    @shoe = shoes(:one)
  end

  test "should create shoe" do
    assert_difference('Shoe.count') do
      post :create, shoe: { brand: @shoe.brand, civilian_id: @shoe.civilian_id, size: @shoe.size }
    end

    assert_redirected_to shoe_path(assigns(:shoe))
  end

  test "should update shoe" do
    patch :update, id: @shoe, shoe: { brand: @shoe.brand, civilian_id: @shoe.civilian_id, size: @shoe.size }
    assert_redirected_to shoe_path(assigns(:shoe))
  end

  test "should destroy shoe" do
    assert_difference('Shoe.count', -1) do
      delete :destroy, id: @shoe
    end

    assert_redirected_to shoes_path
  end
end
