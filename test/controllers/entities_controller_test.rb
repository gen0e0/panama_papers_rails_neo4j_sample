require 'test_helper'

class EntitiesControllerTest < ActionController::TestCase
  setup do
    @entity = Entity.first
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entities)
  end

  test "should show entity" do
    get :show, id: @entity
    assert_response :success
  end
end
