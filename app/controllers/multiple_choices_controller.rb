class MultipleChoicesController < ApplicationController
  # GET /multiple_choices
  # GET /multiple_choices.json
  def index
    @multiple_choices = MultipleChoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @multiple_choices }
    end
  end

  # GET /multiple_choices/1
  # GET /multiple_choices/1.json
  def show
    @multiple_choice = MultipleChoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @multiple_choice }
    end
  end

  # GET /multiple_choices/new
  # GET /multiple_choices/new.json
  def new
    @multiple_choice = MultipleChoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @multiple_choice }
    end
  end

  # GET /multiple_choices/1/edit
  def edit
    @multiple_choice = MultipleChoice.find(params[:id])
  end

  # POST /multiple_choices
  # POST /multiple_choices.json
  def create
    @multiple_choice = MultipleChoice.new(params[:multiple_choice])

    respond_to do |format|
      if @multiple_choice.save
        format.html { redirect_to @multiple_choice, notice: 'Multiple choice was successfully created.' }
        format.json { render json: @multiple_choice, status: :created, location: @multiple_choice }
      else
        format.html { render action: "new" }
        format.json { render json: @multiple_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /multiple_choices/1
  # PUT /multiple_choices/1.json
  def update
    @multiple_choice = MultipleChoice.find(params[:id])

    respond_to do |format|
      if @multiple_choice.update_attributes(params[:multiple_choice])
        format.html { redirect_to @multiple_choice, notice: 'Multiple choice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @multiple_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multiple_choices/1
  # DELETE /multiple_choices/1.json
  def destroy
    @multiple_choice = MultipleChoice.find(params[:id])
    @multiple_choice.destroy

    respond_to do |format|
      format.html { redirect_to multiple_choices_url }
      format.json { head :no_content }
    end
  end
end
