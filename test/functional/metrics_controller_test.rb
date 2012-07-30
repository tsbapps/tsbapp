require 'test_helper'

class MetricsControllerTest < ActionController::TestCase
  setup do
    @metric = metrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metric" do
    assert_difference('Metric.count') do
      post :create, metric: { agentpermission: @metric.agentpermission, companypermission: @metric.companypermission, enddate: @metric.enddate, expectedtime: @metric.expectedtime, frequency: @metric.frequency, level: @metric.level, name: @metric.name, permissionlevel: @metric.permissionlevel, startdate: @metric.startdate, status: @metric.status, summarytype: @metric.summarytype, usergroup: @metric.usergroup, visibility: @metric.visibility }
    end

    assert_redirected_to metric_path(assigns(:metric))
  end

  test "should show metric" do
    get :show, id: @metric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metric
    assert_response :success
  end

  test "should update metric" do
    put :update, id: @metric, metric: { agentpermission: @metric.agentpermission, companypermission: @metric.companypermission, enddate: @metric.enddate, expectedtime: @metric.expectedtime, frequency: @metric.frequency, level: @metric.level, name: @metric.name, permissionlevel: @metric.permissionlevel, startdate: @metric.startdate, status: @metric.status, summarytype: @metric.summarytype, usergroup: @metric.usergroup, visibility: @metric.visibility }
    assert_redirected_to metric_path(assigns(:metric))
  end

  test "should destroy metric" do
    assert_difference('Metric.count', -1) do
      delete :destroy, id: @metric
    end

    assert_redirected_to metrics_path
  end
end
