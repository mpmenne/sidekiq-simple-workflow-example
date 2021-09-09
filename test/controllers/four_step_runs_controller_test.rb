require "test_helper"

class FourStepRunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @four_step_run = four_step_runs(:one)
  end

  test "should get index" do
    get four_step_runs_url
    assert_response :success
  end

  test "should get new" do
    get new_four_step_run_url
    assert_response :success
  end

  test "should create four_step_run" do
    assert_difference('FourStepRun.count') do
      post four_step_runs_url, params: { four_step_run: {  } }
    end

    assert_redirected_to four_step_run_url(FourStepRun.last)
  end

  test "should show four_step_run" do
    get four_step_run_url(@four_step_run)
    assert_response :success
  end

  test "should get edit" do
    get edit_four_step_run_url(@four_step_run)
    assert_response :success
  end

  test "should update four_step_run" do
    patch four_step_run_url(@four_step_run), params: { four_step_run: {  } }
    assert_redirected_to four_step_run_url(@four_step_run)
  end

  test "should destroy four_step_run" do
    assert_difference('FourStepRun.count', -1) do
      delete four_step_run_url(@four_step_run)
    end

    assert_redirected_to four_step_runs_url
  end
end
