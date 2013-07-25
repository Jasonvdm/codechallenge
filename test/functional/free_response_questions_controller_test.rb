require 'test_helper'

class FreeResponseQuestionsControllerTest < ActionController::TestCase
  setup do
    @free_response_question = free_response_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:free_response_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create free_response_question" do
    assert_difference('FreeResponseQuestion.count') do
      post :create, free_response_question: {  }
    end

    assert_redirected_to free_response_question_path(assigns(:free_response_question))
  end

  test "should show free_response_question" do
    get :show, id: @free_response_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @free_response_question
    assert_response :success
  end

  test "should update free_response_question" do
    put :update, id: @free_response_question, free_response_question: {  }
    assert_redirected_to free_response_question_path(assigns(:free_response_question))
  end

  test "should destroy free_response_question" do
    assert_difference('FreeResponseQuestion.count', -1) do
      delete :destroy, id: @free_response_question
    end

    assert_redirected_to free_response_questions_path
  end
end
