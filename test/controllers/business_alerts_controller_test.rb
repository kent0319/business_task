require 'test_helper'

class BusinessAlertsControllerTest < ActionController::TestCase
  setup do
    @business_alert = business_alerts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_alerts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_alert" do
    assert_difference('BusinessAlert.count') do
      post :create, business_alert: { date: @business_alert.date, detail: @business_alert.detail, title: @business_alert.title }
    end

    assert_redirected_to business_alert_path(assigns(:business_alert))
  end

  test "should show business_alert" do
    get :show, id: @business_alert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_alert
    assert_response :success
  end

  test "should update business_alert" do
    patch :update, id: @business_alert, business_alert: { date: @business_alert.date, detail: @business_alert.detail, title: @business_alert.title }
    assert_redirected_to business_alert_path(assigns(:business_alert))
  end

  test "should destroy business_alert" do
    assert_difference('BusinessAlert.count', -1) do
      delete :destroy, id: @business_alert
    end

    assert_redirected_to business_alerts_path
  end
end
