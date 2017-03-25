require 'test_helper'

class VenhiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venhicle = venhicles(:one)
  end

  test "should get index" do
    get venhicles_url, as: :json
    assert_response :success
  end

  test "should create venhicle" do
    assert_difference('Venhicle.count') do
      post venhicles_url, params: { venhicle: { brand: @venhicle.brand, kind: @venhicle.kind, model: @venhicle.model, price: @venhicle.price, year: @venhicle.year } }, as: :json
    end

    assert_response 201
  end

  test "should show venhicle" do
    get venhicle_url(@venhicle), as: :json
    assert_response :success
  end

  test "should update venhicle" do
    patch venhicle_url(@venhicle), params: { venhicle: { brand: @venhicle.brand, kind: @venhicle.kind, model: @venhicle.model, price: @venhicle.price, year: @venhicle.year } }, as: :json
    assert_response 200
  end

  test "should destroy venhicle" do
    assert_difference('Venhicle.count', -1) do
      delete venhicle_url(@venhicle), as: :json
    end

    assert_response 204
  end
end
