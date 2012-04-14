require 'test_helper'

class FoodFormsControllerTest < ActionController::TestCase
  setup do
    @food_form = food_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_form" do
    assert_difference('FoodForm.count') do
      post :create, food_form: @food_form.attributes
    end

    assert_redirected_to food_form_path(assigns(:food_form))
  end

  test "should show food_form" do
    get :show, id: @food_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_form
    assert_response :success
  end

  test "should update food_form" do
    put :update, id: @food_form, food_form: @food_form.attributes
    assert_redirected_to food_form_path(assigns(:food_form))
  end

  test "should destroy food_form" do
    assert_difference('FoodForm.count', -1) do
      delete :destroy, id: @food_form
    end

    assert_redirected_to food_forms_path
  end
end
