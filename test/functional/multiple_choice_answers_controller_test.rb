require 'test_helper'

class MultipleChoiceAnswersControllerTest < ActionController::TestCase
  setup do
    @multiple_choice_answer = multiple_choice_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multiple_choice_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multiple_choice_answer" do
    assert_difference('MultipleChoiceAnswer.count') do
      post :create, multiple_choice_answer: {  }
    end

    assert_redirected_to multiple_choice_answer_path(assigns(:multiple_choice_answer))
  end

  test "should show multiple_choice_answer" do
    get :show, id: @multiple_choice_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multiple_choice_answer
    assert_response :success
  end

  test "should update multiple_choice_answer" do
    put :update, id: @multiple_choice_answer, multiple_choice_answer: {  }
    assert_redirected_to multiple_choice_answer_path(assigns(:multiple_choice_answer))
  end

  test "should destroy multiple_choice_answer" do
    assert_difference('MultipleChoiceAnswer.count', -1) do
      delete :destroy, id: @multiple_choice_answer
    end

    assert_redirected_to multiple_choice_answers_path
  end
end
