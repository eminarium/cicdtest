require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not be valid without a title" do
    post = Post.new(content: "Just a test content")

    assert_not post.valid?, "Post is valid without a title..."
  end

  test "should not be valid without a conten" do
    post = Post.new(title: "Just a test title")

    assert_not post.valid?, "Post is valid without a content..."
  end

  test "should be valid with valid details" do
    post = Post.new(title: "A valid title", content: "A valid post content")

    assert post.valid?, "Post is not valid with valid details..."
  end
end
