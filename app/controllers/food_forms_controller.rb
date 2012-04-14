class FoodFormsController < ApplicationController
  # GET /food_forms
  # GET /food_forms.json
  def index
    @food_forms = FoodForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @food_forms }
    end
  end

  # GET /food_forms/1
  # GET /food_forms/1.json
  def show
    @food_form = FoodForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @food_form }
    end
  end

  # GET /food_forms/new
  # GET /food_forms/new.json
  def new
    @food_form = FoodForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @food_form }
    end
  end

  # GET /food_forms/1/edit
  def edit
    @food_form = FoodForm.find(params[:id])
    @states = State.all
  end

  # POST /food_forms
  # POST /food_forms.json
  def create
    @food_form = FoodForm.new(params[:food_form])

    respond_to do |format|
      if @food_form.save
        format.html { redirect_to @food_form, notice: 'Food form was successfully created.' }
        format.json { render json: @food_form, status: :created, location: @food_form }
      else
        format.html { render action: "new" }
        format.json { render json: @food_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /food_forms/1
  # PUT /food_forms/1.json
  def update
    @food_form = FoodForm.find(params[:id])

    respond_to do |format|
      if @food_form.update_attributes(params[:food_form])
        format.html { redirect_to @food_form, notice: 'Food form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @food_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_forms/1
  # DELETE /food_forms/1.json
  def destroy
    @food_form = FoodForm.find(params[:id])
    @food_form.destroy

    respond_to do |format|
      format.html { redirect_to food_forms_url }
      format.json { head :no_content }
    end
  end
end
