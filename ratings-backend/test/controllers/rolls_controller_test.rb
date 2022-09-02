require "test_helper"

class RollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roll = rolls(:one)
  end

  test "should get index" do
    get rolls_url, as: :json
    assert_response :success
  end

  test "should create roll" do
    assert_difference("Roll.count") do
      post rolls_url, params: { roll: { city: @roll.city, description: @roll.description, price: @roll.price, rating: @roll.rating } }, as: :json
    end

    assert_response :created
  end

  test "should show roll" do
    get roll_url(@roll), as: :json
    assert_response :success
  end

  test "should update roll" do
    patch roll_url(@roll), params: { roll: { city: @roll.city, description: @roll.description, price: @roll.price, rating: @roll.rating } }, as: :json
    assert_response :success
  end

  test "should destroy roll" do
    assert_difference("Roll.count", -1) do
      delete roll_url(@roll), as: :json
    end

    assert_response :no_content
  end
end
