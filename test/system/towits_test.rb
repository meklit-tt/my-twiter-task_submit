require "application_system_test_case"

class TowitsTest < ApplicationSystemTestCase
  setup do
    @towit = towits(:one)
  end

  test "visiting the index" do
    visit towits_url
    assert_selector "h1", text: "Towits"
  end

  test "creating a Towit" do
    visit towits_url
    click_on "New Towit"

    fill_in "Content", with: @towit.content
    click_on "Create Towit"

    assert_text "Towit was successfully created"
    click_on "Back"
  end

  test "updating a Towit" do
    visit towits_url
    click_on "Edit", match: :first

    fill_in "Content", with: @towit.content
    click_on "Update Towit"

    assert_text "Towit was successfully updated"
    click_on "Back"
  end

  test "destroying a Towit" do
    visit towits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Towit was successfully destroyed"
  end
end
