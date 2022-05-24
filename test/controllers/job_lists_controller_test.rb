require "test_helper"

class JobListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_list = job_lists(:one)
  end

  test "should get index" do
    get job_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_job_list_url
    assert_response :success
  end

  test "should create job_list" do
    assert_difference("JobList.count") do
      post job_lists_url, params: { job_list: { company_name: @job_list.company_name, job_description: @job_list.job_description, job_role: @job_list.job_role, job_type: @job_list.job_type, last_date: @job_list.last_date, location: @job_list.location, salary: @job_list.salary, url: @job_list.url } }
    end

    assert_redirected_to job_list_url(JobList.last)
  end

  test "should show job_list" do
    get job_list_url(@job_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_list_url(@job_list)
    assert_response :success
  end

  test "should update job_list" do
    patch job_list_url(@job_list), params: { job_list: { company_name: @job_list.company_name, job_description: @job_list.job_description, job_role: @job_list.job_role, job_type: @job_list.job_type, last_date: @job_list.last_date, location: @job_list.location, salary: @job_list.salary, url: @job_list.url } }
    assert_redirected_to job_list_url(@job_list)
  end

  test "should destroy job_list" do
    assert_difference("JobList.count", -1) do
      delete job_list_url(@job_list)
    end

    assert_redirected_to job_lists_url
  end
end
