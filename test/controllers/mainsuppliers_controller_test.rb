require "test_helper"

class MainsuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mainsupplier = mainsuppliers(:one)
  end

  test "should get index" do
    get mainsuppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_mainsupplier_url
    assert_response :success
  end

  test "should create mainsupplier" do
    assert_difference("Mainsupplier.count") do
      post mainsuppliers_url, params: { mainsupplier: { name: @mainsupplier.name, supply: @mainsupplier.supply } }
    end

    assert_redirected_to mainsupplier_url(Mainsupplier.last)
  end

  test "should show mainsupplier" do
    get mainsupplier_url(@mainsupplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_mainsupplier_url(@mainsupplier)
    assert_response :success
  end

  test "should update mainsupplier" do
    patch mainsupplier_url(@mainsupplier), params: { mainsupplier: { name: @mainsupplier.name, supply: @mainsupplier.supply } }
    assert_redirected_to mainsupplier_url(@mainsupplier)
  end

  test "should destroy mainsupplier" do
    assert_difference("Mainsupplier.count", -1) do
      delete mainsupplier_url(@mainsupplier)
    end

    assert_redirected_to mainsuppliers_url
  end
end
