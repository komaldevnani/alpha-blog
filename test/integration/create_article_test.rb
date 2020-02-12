class CreateArticleTest < ActionDispatch::IntegrationTest
    def setup
        @user = User.create(username: "riya", 
            email: "riya@test.in", password: "passriya")
    end
    test "can create new article" do
        sign_in_as(@user,"passriya")
        get new_article_path
        assert_template 'articles/new'
        assert_difference 'Article.count',1 do
            post articles_path , params:{article: {title: "Testin", 
                description: "creating an article"}}
            follow_redirect!
        end
        assert_template 'articles/show'
        assert_match 'Title: Testin' ,response.body
    end
end