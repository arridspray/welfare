require 'test_helper'

class TanfFormsControllerTest < ActionController::TestCase
  setup do
    @tanf_form = tanf_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tanf_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tanf_form" do
    assert_difference('TanfForm.count') do
      post :create, tanf_form: @tanf_form.attributes
    end

    assert_redirected_to tanf_form_path(assigns(:tanf_form))
  end

  test "should show tanf_form" do
    get :show, id: @tanf_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tanf_form
    assert_response :success
  end

  test "should update tanf_form" do
    put :update, id: @tanf_form, tanf_form: @tanf_form.attributes
    assert_redirected_to tanf_form_path(assigns(:tanf_form))
  end

  test "should destroy tanf_form" do
    assert_difference('TanfForm.count', -1) do
      delete :destroy, id: @tanf_form
    end

    assert_redirected_to tanf_forms_path
  end
end
