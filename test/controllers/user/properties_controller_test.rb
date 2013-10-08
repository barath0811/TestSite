require 'test_helper'

class User::PropertiesControllerTest < ActionController::TestCase
  setup do
    @user_property = user_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_property" do
    assert_difference('User::Property.count') do
      post :create, user_property: {  }
    end

    assert_redirected_to user_property_path(assigns(:user_property))
  end

  test "should show user_property" do
    get :show, id: @user_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_property
    assert_response :success
  end

  test "should update user_property" do
    patch :update, id: @user_property, user_property: {  }
    assert_redirected_to user_property_path(assigns(:user_property))
  end

  test "should destroy user_property" do
    assert_difference('User::Property.count', -1) do
      delete :destroy, id: @user_property
    end

    assert_redirected_to user_properties_path
  end
end
