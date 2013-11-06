require 'test_helper'

class LicPeriodsControllerTest < ActionController::TestCase
  setup do
    @lic_period = lic_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lic_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lic_period" do
    assert_difference('LicPeriod.count') do
      post :create, lic_period: { credit_group_internet_total: @lic_period.credit_group_internet_total, credit_group_live_total: @lic_period.credit_group_live_total, credit_self_study_total: @lic_period.credit_self_study_total, initial_date: @lic_period.initial_date, renewal_date: @lic_period.renewal_date, state_id: @lic_period.state_id, user_id: @lic_period.user_id }
    end

    assert_redirected_to lic_period_path(assigns(:lic_period))
  end

  test "should show lic_period" do
    get :show, id: @lic_period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lic_period
    assert_response :success
  end

  test "should update lic_period" do
    patch :update, id: @lic_period, lic_period: { credit_group_internet_total: @lic_period.credit_group_internet_total, credit_group_live_total: @lic_period.credit_group_live_total, credit_self_study_total: @lic_period.credit_self_study_total, initial_date: @lic_period.initial_date, renewal_date: @lic_period.renewal_date, state_id: @lic_period.state_id, user_id: @lic_period.user_id }
    assert_redirected_to lic_period_path(assigns(:lic_period))
  end

  test "should destroy lic_period" do
    assert_difference('LicPeriod.count', -1) do
      delete :destroy, id: @lic_period
    end

    assert_redirected_to lic_periods_path
  end
end
