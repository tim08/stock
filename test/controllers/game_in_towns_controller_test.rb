require 'test_helper'

class GameInTownsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get game_in_towns_index_url
    assert_response :success
  end

end
