class FreeResponseQuestionsController < ApplicationController
  # GET /free_response_questions
  # GET /free_response_questions.json
  def index
    @free_response_questions = FreeResponseQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @free_response_questions }
    end
  end

  # GET /free_response_questions/1
  # GET /free_response_questions/1.json
  def show
    @free_response_question = FreeResponseQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @free_response_question }
    end
  end

  # GET /free_response_questions/new
  # GET /free_response_questions/new.json
  def new
    @free_response_question = FreeResponseQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @free_response_question }
    end
  end

  # GET /free_response_questions/1/edit
  def edit
    @free_response_question = FreeResponseQuestion.find(params[:id])
  end

  # POST /free_response_questions
  # POST /free_response_questions.json
  def create
    @free_response_question = FreeResponseQuestion.new(params[:free_response_question])

    respond_to do |format|
      if @free_response_question.save
        format.html { redirect_to @free_response_question, notice: 'Free response question was successfully created.' }
        format.json { render json: @free_response_question, status: :created, location: @free_response_question }
      else
        format.html { render action: "new" }
        format.json { render json: @free_response_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /free_response_questions/1
  # PUT /free_response_questions/1.json
  def update
    @free_response_question = FreeResponseQuestion.find(params[:id])

    respond_to do |format|
      if @free_response_question.update_attributes(params[:free_response_question])
        format.html { redirect_to @free_response_question, notice: 'Free response question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @free_response_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /free_response_questions/1
  # DELETE /free_response_questions/1.json
  def destroy
    @free_response_question = FreeResponseQuestion.find(params[:id])
    @free_response_question.destroy

    respond_to do |format|
      format.html { redirect_to free_response_questions_url }
      format.json { head :no_content }
    end
  end
end
