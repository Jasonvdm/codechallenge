require 'test_helper'

class FreeResponseAnswersControllerTest < ActionController::TestCase
  setup do
    @free_response_answer = free_response_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:free_response_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create free_response_answer" do
    assert_difference('FreeResponseAnswer.count') do
      post :create, free_response_answer: {  }
    end

    assert_redirected_to free_response_answer_path(assigns(:free_response_answer))
  end

  test "should show free_response_answer" do
    get :show, id: @free_response_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @free_response_answer
    assert_response :success
  end

  test "should update free_response_answer" do
    put :update, id: @free_response_answer, free_response_answer: {  }
    assert_redirected_to free_response_answer_path(assigns(:free_response_answer))
  end

  test "should destroy free_response_answer" do
    assert_difference('FreeResponseAnswer.count', -1) do
      delete :destroy, id: @free_response_answer
    end

    assert_redirected_to free_response_answers_path
  end
end
