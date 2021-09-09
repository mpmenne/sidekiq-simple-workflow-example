require "application_system_test_case"

class FourStepRunsTest < ApplicationSystemTestCase
  setup do
    @four_step_run = four_step_runs(:one)
  end

  test "visiting the index" do
    visit four_step_runs_url
    assert_selector "h1", text: "Four Step Runs"
  end

  test "creating a Four step run" do
    visit four_step_runs_url
    click_on "New Four Step Run"

    click_on "Create Four step run"

    assert_text "Four step run was successfully created"
    click_on "Back"
  end

  test "updating a Four step run" do
    visit four_step_runs_url
    click_on "Edit", match: :first

    click_on "Update Four step run"

    assert_text "Four step run was successfully updated"
    click_on "Back"
  end

  test "destroying a Four step run" do
    visit four_step_runs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Four step run was successfully destroyed"
  end
end
