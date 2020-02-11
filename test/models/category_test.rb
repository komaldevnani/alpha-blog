require "test_helper"
class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(name: "sports")
  end

  test "category should be valid" do
    assert @category.valid?
  end

  test "category should not be too short" do
    @category.name = "a"
    assert_not @category.valid?
  end

  test "category should not be too long" do
    @category.name = "a" * 31
    assert_not @category.valid?
  end

  test "category should be unique" do
    @category.save
    @category = Category.new(name: "sports")
    assert_not @category.valid?
  end
end