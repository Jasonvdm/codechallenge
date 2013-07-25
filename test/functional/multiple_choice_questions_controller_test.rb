require 'test_helper'

class MultipleChoiceQuestionsControllerTest < ActionController::TestCase
  setup do
    @multiple_choice_question = multiple_choice_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multiple_choice_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multiple_choice_question" do
    assert_difference('MultipleChoiceQuestion.count') do
      post :create, multiple_choice_question: {  }
    end

    assert_redirected_to multiple_choice_question_path(assigns(:multiple_choice_question))
  end

  test "should show multiple_choice_question" do
    get :show, id: @multiple_choice_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multiple_choice_question
    assert_response :success
  end

  test "should update multiple_choice_question" do
    put :update, id: @multiple_choice_question, multiple_choice_question: {  }
    assert_redirected_to multiple_choice_question_path(assigns(:multiple_choice_question))
  end

  test "should destroy multiple_choice_question" do
    assert_difference('MultipleChoiceQuestion.count', -1) do
      delete :destroy, id: @multiple_choice_question
    end

    assert_redirected_to multiple_choice_questions_path
  end
end
