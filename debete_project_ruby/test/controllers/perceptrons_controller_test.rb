require 'test_helper'

class PerceptronsControllerTest < ActionController::TestCase
  setup do
    @perceptron = perceptrons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perceptrons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perceptron" do
    assert_difference('Perceptron.count') do
      post :create, perceptron: {  }
    end

    assert_redirected_to perceptron_path(assigns(:perceptron))
  end

  test "should show perceptron" do
    get :show, id: @perceptron
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perceptron
    assert_response :success
  end

  test "should update perceptron" do
    patch :update, id: @perceptron, perceptron: {  }
    assert_redirected_to perceptron_path(assigns(:perceptron))
  end

  test "should destroy perceptron" do
    assert_difference('Perceptron.count', -1) do
      delete :destroy, id: @perceptron
    end

    assert_redirected_to perceptrons_path
  end
end
