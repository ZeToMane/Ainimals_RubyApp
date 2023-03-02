require "application_system_test_case"

class AinimalsTest < ApplicationSystemTestCase
  setup do
    @ainimal = ainimals(:one)
  end

  test "visiting the index" do
    visit ainimals_url
    assert_selector "h1", text: "Ainimals"
  end

  test "should create ainimal" do
    visit ainimals_url
    click_on "New ainimal"

    fill_in "Class", with: @ainimal.class
    fill_in "Desc", with: @ainimal.desc
    fill_in "Image", with: @ainimal.image
    fill_in "Name", with: @ainimal.name
    click_on "Create Ainimal"

    assert_text "Ainimal was successfully created"
    click_on "Back"
  end

  test "should update Ainimal" do
    visit ainimal_url(@ainimal)
    click_on "Edit this ainimal", match: :first

    fill_in "Class", with: @ainimal.class
    fill_in "Desc", with: @ainimal.desc
    fill_in "Image", with: @ainimal.image
    fill_in "Name", with: @ainimal.name
    click_on "Update Ainimal"

    assert_text "Ainimal was successfully updated"
    click_on "Back"
  end

  test "should destroy Ainimal" do
    visit ainimal_url(@ainimal)
    click_on "Destroy this ainimal", match: :first

    assert_text "Ainimal was successfully destroyed"
  end
end
