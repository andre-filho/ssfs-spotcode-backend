require 'test_helper'

class RecentlyHeardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recently_heard = recently_heards(:one)
  end

  test "should get index" do
    get recently_heards_url, as: :json
    assert_response :success
  end

  test "should create recently_heard" do
    assert_difference('RecentlyHeard.count') do
      post recently_heards_url, params: { recently_heard: { album_id: @recently_heard.album_id, user_id: @recently_heard.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recently_heard" do
    get recently_heard_url(@recently_heard), as: :json
    assert_response :success
  end

  test "should update recently_heard" do
    patch recently_heard_url(@recently_heard), params: { recently_heard: { album_id: @recently_heard.album_id, user_id: @recently_heard.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy recently_heard" do
    assert_difference('RecentlyHeard.count', -1) do
      delete recently_heard_url(@recently_heard), as: :json
    end

    assert_response 204
  end
end
