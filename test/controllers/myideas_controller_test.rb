require 'test_helper'

class MyideasControllerTest < ActionController::TestCase
  setup do
    @myidea = myideas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myidea" do
    assert_difference('Myidea.count') do
      post :create, myidea: { description: @myidea.description, name: @myidea.name, picture: @myidea.picture }
    end

    assert_redirected_to myidea_path(assigns(:myidea))
  end

  test "should show myidea" do
    get :show, id: @myidea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myidea
    assert_response :success
  end

  test "should update myidea" do
    patch :update, id: @myidea, myidea: { description: @myidea.description, name: @myidea.name, picture: @myidea.picture }
    assert_redirected_to myidea_path(assigns(:myidea))
  end

  test "should destroy myidea" do
    assert_difference('Myidea.count', -1) do
      delete :destroy, id: @myidea
    end

    assert_redirected_to myideas_path
  end
end
