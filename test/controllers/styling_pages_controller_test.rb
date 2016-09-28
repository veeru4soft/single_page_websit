require 'test_helper'

class StylingPagesControllerTest < ActionController::TestCase
  setup do
    @styling_page = styling_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:styling_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create styling_page" do
    assert_difference('StylingPage.count') do
      post :create, styling_page: { color: @styling_page.color, font: @styling_page.font, title: @styling_page.title }
    end

    assert_redirected_to styling_page_path(assigns(:styling_page))
  end

  test "should show styling_page" do
    get :show, id: @styling_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @styling_page
    assert_response :success
  end

  test "should update styling_page" do
    patch :update, id: @styling_page, styling_page: { color: @styling_page.color, font: @styling_page.font, title: @styling_page.title }
    assert_redirected_to styling_page_path(assigns(:styling_page))
  end

  test "should destroy styling_page" do
    assert_difference('StylingPage.count', -1) do
      delete :destroy, id: @styling_page
    end

    assert_redirected_to styling_pages_path
  end
end
