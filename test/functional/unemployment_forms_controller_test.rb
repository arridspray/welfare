require 'test_helper'

class UnemploymentFormsControllerTest < ActionController::TestCase
  setup do
    @unemployment_form = unemployment_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unemployment_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unemployment_form" do
    assert_difference('UnemploymentForm.count') do
      post :create, unemployment_form: @unemployment_form.attributes
    end

    assert_redirected_to unemployment_form_path(assigns(:unemployment_form))
  end

  test "should show unemployment_form" do
    get :show, id: @unemployment_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unemployment_form
    assert_response :success
  end

  test "should update unemployment_form" do
    put :update, id: @unemployment_form, unemployment_form: @unemployment_form.attributes
    assert_redirected_to unemployment_form_path(assigns(:unemployment_form))
  end

  test "should destroy unemployment_form" do
    assert_difference('UnemploymentForm.count', -1) do
      delete :destroy, id: @unemployment_form
    end

    assert_redirected_to unemployment_forms_path
  end
end
