require 'test_helper'

class FreeResponsesControllerTest < ActionController::TestCase
  setup do
    @free_response = free_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:free_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create free_response" do
    assert_difference('FreeResponse.count') do
      post :create, free_response: {  }
    end

    assert_redirected_to free_response_path(assigns(:free_response))
  end

  test "should show free_response" do
    get :show, id: @free_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @free_response
    assert_response :success
  end

  test "should update free_response" do
    put :update, id: @free_response, free_response: {  }
    assert_redirected_to free_response_path(assigns(:free_response))
  end

  test "should destroy free_response" do
    assert_difference('FreeResponse.count', -1) do
      delete :destroy, id: @free_response
    end

    assert_redirected_to free_responses_path
  end
end
