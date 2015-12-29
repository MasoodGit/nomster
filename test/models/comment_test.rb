require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "test humanized_rating" do
    user = FactoryGirl.create(:user)
    place = FactoryGirl.create(:place, :user => user)
    comment = FactoryGirl.create(:comment, :user => user , :place => place)
    expected = "two stars"
    actual = comment.humanized_rating
    assert_equal expected, actual
  end
end
