require 'test_helper'

class NewPeopleControllerTest < ActionController::TestCase
  setup do
    @new_person = new_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_person" do
    assert_difference('NewPerson.count') do
      post :create, new_person: { first: @new_person.first, last: @new_person.last }
    end

    assert_redirected_to new_person_path(assigns(:new_person))
  end

  test "should show new_person" do
    get :show, id: @new_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_person
    assert_response :success
  end

  test "should update new_person" do
    patch :update, id: @new_person, new_person: { first: @new_person.first, last: @new_person.last }
    assert_redirected_to new_person_path(assigns(:new_person))
  end

  test "should destroy new_person" do
    assert_difference('NewPerson.count', -1) do
      delete :destroy, id: @new_person
    end

    assert_redirected_to new_people_path
  end
end
