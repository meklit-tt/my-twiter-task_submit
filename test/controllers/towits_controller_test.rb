require 'test_helper'

class TowitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @towit = towits(:one)
  end

  test "should get index" do
    get towits_url
    assert_response :success
  end

  test "should get new" do
    get new_towit_url
    assert_response :success
  end

  test "should create towit" do
    assert_difference('Towit.count') do
      post towits_url, params: { towit: { content: @towit.content } }
    end

    assert_redirected_to towit_url(Towit.last)
  end

  test "should show towit" do
    get towit_url(@towit)
    assert_response :success
  end

  test "should get edit" do
    get edit_towit_url(@towit)
    assert_response :success
  end

  test "should update towit" do
    patch towit_url(@towit), params: { towit: { content: @towit.content } }
    assert_redirected_to towit_url(@towit)
  end

  test "should destroy towit" do
    assert_difference('Towit.count', -1) do
      delete towit_url(@towit)
    end

    assert_redirected_to towits_url
  end
end
