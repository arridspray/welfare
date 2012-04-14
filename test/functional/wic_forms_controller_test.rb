require 'test_helper'

class WicFormsControllerTest < ActionController::TestCase
  setup do
    @wic_form = wic_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wic_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wic_form" do
    assert_difference('WicForm.count') do
      post :create, wic_form: @wic_form.attributes
    end

    assert_redirected_to wic_form_path(assigns(:wic_form))
  end

  test "should show wic_form" do
    get :show, id: @wic_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wic_form
    assert_response :success
  end

  test "should update wic_form" do
    put :update, id: @wic_form, wic_form: @wic_form.attributes
    assert_redirected_to wic_form_path(assigns(:wic_form))
  end

  test "should destroy wic_form" do
    assert_difference('WicForm.count', -1) do
      delete :destroy, id: @wic_form
    end

    assert_redirected_to wic_forms_path
  end
end
