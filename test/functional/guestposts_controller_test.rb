require 'test_helper'

class GuestpostsControllerTest < ActionController::TestCase
  setup do
    @guestpost = guestposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guestposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guestpost" do
    assert_difference('Guestpost.count') do
      post :create, guestpost: { email: @guestpost.email, message: @guestpost.message, name: @guestpost.name }
    end

    assert_redirected_to guestpost_path(assigns(:guestpost))
  end

  test "should show guestpost" do
    get :show, id: @guestpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guestpost
    assert_response :success
  end

  test "should update guestpost" do
    put :update, id: @guestpost, guestpost: { email: @guestpost.email, message: @guestpost.message, name: @guestpost.name }
    assert_redirected_to guestpost_path(assigns(:guestpost))
  end

  test "should destroy guestpost" do
    assert_difference('Guestpost.count', -1) do
      delete :destroy, id: @guestpost
    end

    assert_redirected_to guestposts_path
  end
end
