require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get article_id:references" do
    get comments_article_id:references_url
    assert_response :success
  end

  test "should get body:text" do
    get comments_body:text_url
    assert_response :success
  end

end
