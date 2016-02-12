require 'test_helper'

class MytablesControllerTest < ActionController::TestCase
  setup do
    @mytable = mytables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mytables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mytable" do
    assert_difference('Mytable.count') do
      post :create, mytable: { email: @mytable.email, name: @mytable.name }
    end

    assert_redirected_to mytable_path(assigns(:mytable))
  end

  test "should show mytable" do
    get :show, id: @mytable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mytable
    assert_response :success
  end

  test "should update mytable" do
    patch :update, id: @mytable, mytable: { email: @mytable.email, name: @mytable.name }
    assert_redirected_to mytable_path(assigns(:mytable))
  end

  test "should destroy mytable" do
    assert_difference('Mytable.count', -1) do
      delete :destroy, id: @mytable
    end

    assert_redirected_to mytables_path
  end
end
