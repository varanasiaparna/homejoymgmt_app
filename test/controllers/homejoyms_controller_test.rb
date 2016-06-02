require 'test_helper'

class HomejoymsControllerTest < ActionController::TestCase
  setup do
    @homejoym = homejoyms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homejoyms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homejoym" do
    assert_difference('Homejoym.count') do
      post :create, homejoym: { address: @homejoym.address, numofworkers: @homejoym.numofworkers, packages: @homejoym.packages, payment: @homejoym.payment, ratecard: @homejoym.ratecard, selectservice: @homejoym.selectservice }
    end

    assert_redirected_to homejoym_path(assigns(:homejoym))
  end

  test "should show homejoym" do
    get :show, id: @homejoym
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homejoym
    assert_response :success
  end

  test "should update homejoym" do
    patch :update, id: @homejoym, homejoym: { address: @homejoym.address, numofworkers: @homejoym.numofworkers, packages: @homejoym.packages, payment: @homejoym.payment, ratecard: @homejoym.ratecard, selectservice: @homejoym.selectservice }
    assert_redirected_to homejoym_path(assigns(:homejoym))
  end

  test "should destroy homejoym" do
    assert_difference('Homejoym.count', -1) do
      delete :destroy, id: @homejoym
    end

    assert_redirected_to homejoyms_path
  end
end
