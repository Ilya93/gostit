require 'test_helper'

class StuiesControllerTest < ActionController::TestCase
  setup do
    @stuie = stuies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stuie" do
    assert_difference('Stuie.count') do
      post :create, stuie: { name: @stuie.name, text: @stuie.text, user_id: @stuie.user_id }
    end

    assert_redirected_to stuie_path(assigns(:stuie))
  end

  test "should show stuie" do
    get :show, id: @stuie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stuie
    assert_response :success
  end

  test "should update stuie" do
    patch :update, id: @stuie, stuie: { name: @stuie.name, text: @stuie.text, user_id: @stuie.user_id }
    assert_redirected_to stuie_path(assigns(:stuie))
  end

  test "should destroy stuie" do
    assert_difference('Stuie.count', -1) do
      delete :destroy, id: @stuie
    end

    assert_redirected_to stuies_path
  end
end
