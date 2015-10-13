require 'test_helper'

class ReffersControllerTest < ActionController::TestCase
  setup do
    @reffer = reffers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reffers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reffer" do
    assert_difference('Reffer.count') do
      post :create, reffer: {  }
    end

    assert_redirected_to reffer_path(assigns(:reffer))
  end

  test "should show reffer" do
    get :show, id: @reffer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reffer
    assert_response :success
  end

  test "should update reffer" do
    patch :update, id: @reffer, reffer: {  }
    assert_redirected_to reffer_path(assigns(:reffer))
  end

  test "should destroy reffer" do
    assert_difference('Reffer.count', -1) do
      delete :destroy, id: @reffer
    end

    assert_redirected_to reffers_path
  end
end
