require 'test_helper'

class MedicareFormsControllerTest < ActionController::TestCase
  setup do
    @medicare_form = medicare_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicare_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicare_form" do
    assert_difference('MedicareForm.count') do
      post :create, medicare_form: @medicare_form.attributes
    end

    assert_redirected_to medicare_form_path(assigns(:medicare_form))
  end

  test "should show medicare_form" do
    get :show, id: @medicare_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicare_form
    assert_response :success
  end

  test "should update medicare_form" do
    put :update, id: @medicare_form, medicare_form: @medicare_form.attributes
    assert_redirected_to medicare_form_path(assigns(:medicare_form))
  end

  test "should destroy medicare_form" do
    assert_difference('MedicareForm.count', -1) do
      delete :destroy, id: @medicare_form
    end

    assert_redirected_to medicare_forms_path
  end
end
