require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "add comment for a place" do
    user = FactoryGirl.create(:user)
    sign_in user

    place = FactoryGirl.create(:place, :user => user)
    assert_difference 'Comment.count' do
      post :create , :place_id => place.id, :comment => {
        :message => 'Yo man, this is awesome place',
        :rating => '3_stars'
      }
    end

    # assert if comment saved in database
    assert_equal 1, place.comments.count

    # assert if redirection works
    assert_redirected_to place_path(place)
  end
end
