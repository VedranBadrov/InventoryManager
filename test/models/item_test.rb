require "test_helper"

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should save item with a name" do
    item = Item.new
    assert_not item.save "Saved item without a name"
  end

  test "should save item with a description" do
    item = Item.new
    assert_not item.save "Saved item without a description"

  test "should save item with a quantity" do
    item = Item.new
    assert_not item.save "Saved item without a quantity"
end
