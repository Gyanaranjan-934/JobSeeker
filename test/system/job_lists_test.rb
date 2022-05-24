require "application_system_test_case"

class JobListsTest < ApplicationSystemTestCase
  setup do
    @job_list = job_lists(:one)
  end

  test "visiting the index" do
    visit job_lists_url
    assert_selector "h1", text: "Job lists"
  end

  test "should create job list" do
    visit job_lists_url
    click_on "New job list"

    fill_in "Company name", with: @job_list.company_name
    fill_in "Job description", with: @job_list.job_description
    fill_in "Job role", with: @job_list.job_role
    fill_in "Job type", with: @job_list.job_type
    fill_in "Last date", with: @job_list.last_date
    fill_in "Location", with: @job_list.location
    fill_in "Salary", with: @job_list.salary
    fill_in "Url", with: @job_list.url
    click_on "Create Job list"

    assert_text "Job list was successfully created"
    click_on "Back"
  end

  test "should update Job list" do
    visit job_list_url(@job_list)
    click_on "Edit this job list", match: :first

    fill_in "Company name", with: @job_list.company_name
    fill_in "Job description", with: @job_list.job_description
    fill_in "Job role", with: @job_list.job_role
    fill_in "Job type", with: @job_list.job_type
    fill_in "Last date", with: @job_list.last_date
    fill_in "Location", with: @job_list.location
    fill_in "Salary", with: @job_list.salary
    fill_in "Url", with: @job_list.url
    click_on "Update Job list"

    assert_text "Job list was successfully updated"
    click_on "Back"
  end

  test "should destroy Job list" do
    visit job_list_url(@job_list)
    click_on "Destroy this job list", match: :first

    assert_text "Job list was successfully destroyed"
  end
end
