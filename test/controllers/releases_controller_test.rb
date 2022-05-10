require "test_helper"

class ReleasesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get releases_new_url
    assert_response :success
  end

  test "should get index" do
    get releases_index_url
    assert_response :success
  end

  test "should get edit" do
    get releases_edit_url
    assert_response :success
  end

  test "should get show" do
    get releases_show_url
    assert_response :success
  end
end
