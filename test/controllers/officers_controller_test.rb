require 'test_helper'

class OfficersControllerTest < ActionController::TestCase
  setup do
    @officer = Officer.first
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:officers)
  end

  test "should show officer" do
    get :show, id: @officer
    assert_response :success
  end
end
