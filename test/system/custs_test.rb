require "application_system_test_case"

class CustsTest < ApplicationSystemTestCase
  setup do
    @cust = custs(:one)
  end

  test "visiting the index" do
    visit custs_url
    assert_selector "h1", text: "Custs"
  end

  test "should create cust" do
    visit custs_url
    click_on "New cust"

    fill_in "District", with: @cust.district
    fill_in "Email", with: @cust.email
    fill_in "Name", with: @cust.name
    fill_in "Phone", with: @cust.phone
    click_on "Create Cust"

    assert_text "Cust was successfully created"
    click_on "Back"
  end

  test "should update Cust" do
    visit cust_url(@cust)
    click_on "Edit this cust", match: :first

    fill_in "District", with: @cust.district
    fill_in "Email", with: @cust.email
    fill_in "Name", with: @cust.name
    fill_in "Phone", with: @cust.phone
    click_on "Update Cust"

    assert_text "Cust was successfully updated"
    click_on "Back"
  end

  test "should destroy Cust" do
    visit cust_url(@cust)
    click_on "Destroy this cust", match: :first

    assert_text "Cust was successfully destroyed"
  end
end
