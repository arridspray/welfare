require 'test_helper'

class SectioneightFormsControllerTest < ActionController::TestCase
  setup do
    @sectioneight_form = sectioneight_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sectioneight_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sectioneight_form" do
    assert_difference('SectioneightForm.count') do
      post :create, sectioneight_form: @sectioneight_form.attributes
    end

    assert_redirected_to sectioneight_form_path(assigns(:sectioneight_form))
  end

  test "should show sectioneight_form" do
    get :show, id: @sectioneight_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sectioneight_form
    assert_response :success
  end

  test "should update sectioneight_form" do
    put :update, id: @sectioneight_form, sectioneight_form: @sectioneight_form.attributes
    assert_redirected_to sectioneight_form_path(assigns(:sectioneight_form))
  end

  test "should destroy sectioneight_form" do
    assert_difference('SectioneightForm.count', -1) do
      delete :destroy, id: @sectioneight_form
    end

    assert_redirected_to sectioneight_forms_path
  end
end
