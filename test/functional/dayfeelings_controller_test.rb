require 'test_helper'

class DayfeelingsControllerTest < ActionController::TestCase
  setup do
    @dayfeeling = dayfeelings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dayfeelings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dayfeeling" do
    assert_difference('Dayfeeling.count') do
      post :create, :dayfeeling => @dayfeeling.attributes
    end

    assert_redirected_to dayfeeling_path(assigns(:dayfeeling))
  end

  test "should show dayfeeling" do
    get :show, :id => @dayfeeling.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dayfeeling.to_param
    assert_response :success
  end

  test "should update dayfeeling" do
    put :update, :id => @dayfeeling.to_param, :dayfeeling => @dayfeeling.attributes
    assert_redirected_to dayfeeling_path(assigns(:dayfeeling))
  end

  test "should destroy dayfeeling" do
    assert_difference('Dayfeeling.count', -1) do
      delete :destroy, :id => @dayfeeling.to_param
    end

    assert_redirected_to dayfeelings_path
  end
end
