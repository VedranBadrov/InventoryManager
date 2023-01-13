require "test_helper"

class MainsupplierTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should save supplier with a name" do
    mainsupplier = Mainsupplier.new
    assert_not mainsupplier.save "Saved supplier without a name"
  end

  test "should save supplier with a supply" do
    mainsupplier = Mainsupplier.new
    assert_not mainsupplier.save "Saved supplier without a supply"
  end
end
