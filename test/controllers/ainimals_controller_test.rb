require "test_helper"

class AinimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ainimal = ainimals(:one)
  end

  test "should get index" do
    get ainimals_url
    assert_response :success
  end

  test "should get new" do
    get new_ainimal_url
    assert_response :success
  end

  test "should create ainimal" do
    assert_difference("Ainimal.count") do
      post ainimals_url, params: { ainimal: { class: @ainimal.class, desc: @ainimal.desc, image: @ainimal.image, name: @ainimal.name } }
    end

    assert_redirected_to ainimal_url(Ainimal.last)
  end

  test "should show ainimal" do
    get ainimal_url(@ainimal)
    assert_response :success
  end

  test "should get edit" do
    get edit_ainimal_url(@ainimal)
    assert_response :success
  end

  test "should update ainimal" do
    patch ainimal_url(@ainimal), params: { ainimal: { class: @ainimal.class, desc: @ainimal.desc, image: @ainimal.image, name: @ainimal.name } }
    assert_redirected_to ainimal_url(@ainimal)
  end

  test "should destroy ainimal" do
    assert_difference("Ainimal.count", -1) do
      delete ainimal_url(@ainimal)
    end

    assert_redirected_to ainimals_url
  end
end
