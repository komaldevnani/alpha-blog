class ListCategoriesTest < ActionDispatch::IntegrationTest
    def setup
        @category = Category.create(name: "health care")
        @category1 = Category.create(name: "sports")
    end

    test "should show categories listing" do
        get categories_path
        assert_template 'categories/index'
        assert_select "a[href=?]",category_path(@category),text: @category.name
        assert_select "a[href=?]",category_path(@category1),text: @category1.name
    end
end