require 'test_helper'

class SsiFormsControllerTest < ActionController::TestCase
  setup do
    @ssi_form = ssi_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ssi_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ssi_form" do
    assert_difference('SsiForm.count') do
      post :create, ssi_form: @ssi_form.attributes
    end

    assert_redirected_to ssi_form_path(assigns(:ssi_form))
  end

  test "should show ssi_form" do
    get :show, id: @ssi_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ssi_form
    assert_response :success
  end

  test "should update ssi_form" do
    put :update, id: @ssi_form, ssi_form: @ssi_form.attributes
    assert_redirected_to ssi_form_path(assigns(:ssi_form))
  end

  test "should destroy ssi_form" do
    assert_difference('SsiForm.count', -1) do
      delete :destroy, id: @ssi_form
    end

    assert_redirected_to ssi_forms_path
  end
end
