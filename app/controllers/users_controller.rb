class UsersController < ApplicationController

  helper_method :shuffle_answers

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @quiz =  @user.quizzes.last
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end


  def generate_new_quiz(category)
    quiz = Quiz.new(params[:quiz])
    quiz.category = category
    quiz.user_id = current_user.id
    mc_question = MultipleChoiceQuestion.all.sample
    i = 0
    length = MultipleChoiceQuestion.all.length
    while i < 12 && i < length do
      while true
        mc_question = MultipleChoiceQuestion.all.sample
        if !quiz.mc_questions.include(mc_question)?
          @quiz.mc_questions << mc_question
          break
        end
      end
      i = i + 1
    end
    return quiz
  end


  def take_quiz
    category = params[:category]

    temp_quiz = @user.quizzes.where(:category => category, :is_completed => false, :in_progress => true).first
    if temp_quiz
      @temp_quiz = temp_quiz
      respond_to do |format|
        format.html { redirect_to @user }
        format.json { render json: @temp_quiz, location: @user }
      end
    end
  end

  def shuffle_answers(mc_question)
    possible_answers = []
    mc_question.wrong_answers.split(",").each do |wrong_answer|
      possible_answers << wrong_answer
    end
    possible_answers << mc_question.correct_answer
    possible_answers.shuffle!
    return possible_answers
  end


end









