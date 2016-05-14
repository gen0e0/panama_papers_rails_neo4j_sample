require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = Address.first
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end
end
