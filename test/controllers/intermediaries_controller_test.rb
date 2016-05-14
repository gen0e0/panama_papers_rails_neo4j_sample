require 'test_helper'

class IntermediariesControllerTest < ActionController::TestCase
  setup do
    @intermediary = Intermediary.first
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intermediaries)
  end

  test "should show intermediary" do
    get :show, id: @intermediary
    assert_response :success
  end
end
