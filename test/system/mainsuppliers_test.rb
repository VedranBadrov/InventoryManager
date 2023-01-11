require "application_system_test_case"

class MainsuppliersTest < ApplicationSystemTestCase
  setup do
    @mainsupplier = mainsuppliers(:one)
  end

  test "visiting the index" do
    visit mainsuppliers_url
    assert_selector "h1", text: "Mainsuppliers"
  end

  test "should create mainsupplier" do
    visit mainsuppliers_url
    click_on "New mainsupplier"

    fill_in "Name", with: @mainsupplier.name
    fill_in "Supply", with: @mainsupplier.supply
    click_on "Create Mainsupplier"

    assert_text "Mainsupplier was successfully created"
    click_on "Back"
  end

  test "should update Mainsupplier" do
    visit mainsupplier_url(@mainsupplier)
    click_on "Edit this mainsupplier", match: :first

    fill_in "Name", with: @mainsupplier.name
    fill_in "Supply", with: @mainsupplier.supply
    click_on "Update Mainsupplier"

    assert_text "Mainsupplier was successfully updated"
    click_on "Back"
  end

  test "should destroy Mainsupplier" do
    visit mainsupplier_url(@mainsupplier)
    click_on "Destroy this mainsupplier", match: :first

    assert_text "Mainsupplier was successfully destroyed"
  end
end
