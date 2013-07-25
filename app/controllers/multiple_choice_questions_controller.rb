class MultipleChoiceQuestionsController < ApplicationController
  # GET /multiple_choice_questions
  # GET /multiple_choice_questions.json
  def index
    @multiple_choice_questions = MultipleChoiceQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @multiple_choice_questions }
    end
  end

  # GET /multiple_choice_questions/1
  # GET /multiple_choice_questions/1.json
  def show
    @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @multiple_choice_question }
    end
  end

  # GET /multiple_choice_questions/new
  # GET /multiple_choice_questions/new.json
  def new
    @multiple_choice_question = MultipleChoiceQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @multiple_choice_question }
    end
  end

  # GET /multiple_choice_questions/1/edit
  def edit
    @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
  end

  # POST /multiple_choice_questions
  # POST /multiple_choice_questions.json
  def create
    @multiple_choice_question = MultipleChoiceQuestion.new(params[:multiple_choice_question])

    respond_to do |format|
      if @multiple_choice_question.save
        format.html { redirect_to @multiple_choice_question, notice: 'Multiple choice question was successfully created.' }
        format.json { render json: @multiple_choice_question, status: :created, location: @multiple_choice_question }
      else
        format.html { render action: "new" }
        format.json { render json: @multiple_choice_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /multiple_choice_questions/1
  # PUT /multiple_choice_questions/1.json
  def update
    @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])

    respond_to do |format|
      if @multiple_choice_question.update_attributes(params[:multiple_choice_question])
        format.html { redirect_to @multiple_choice_question, notice: 'Multiple choice question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @multiple_choice_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multiple_choice_questions/1
  # DELETE /multiple_choice_questions/1.json
  def destroy
    @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
    @multiple_choice_question.destroy

    respond_to do |format|
      format.html { redirect_to multiple_choice_questions_url }
      format.json { head :no_content }
    end
  end
end
