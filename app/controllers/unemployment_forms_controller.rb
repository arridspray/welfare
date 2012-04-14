class UnemploymentFormsController < ApplicationController
  # GET /unemployment_forms
  # GET /unemployment_forms.json
  def index
    @unemployment_forms = UnemploymentForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unemployment_forms }
    end
  end

  # GET /unemployment_forms/1
  # GET /unemployment_forms/1.json
  def show
    @unemployment_form = UnemploymentForm.find(params[:id])
    @states = State.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unemployment_form }
    end
  end

  # GET /unemployment_forms/new
  # GET /unemployment_forms/new.json
  def new
    @unemployment_form = UnemploymentForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unemployment_form }
    end
  end

  # GET /unemployment_forms/1/edit
  def edit
    @unemployment_form = UnemploymentForm.find(params[:id])
  end

  # POST /unemployment_forms
  # POST /unemployment_forms.json
  def create
    @unemployment_form = UnemploymentForm.new(params[:unemployment_form])

    respond_to do |format|
      if @unemployment_form.save
        format.html { redirect_to @unemployment_form, notice: 'Unemployment form was successfully created.' }
        format.json { render json: @unemployment_form, status: :created, location: @unemployment_form }
      else
        format.html { render action: "new" }
        format.json { render json: @unemployment_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unemployment_forms/1
  # PUT /unemployment_forms/1.json
  def update
    @unemployment_form = UnemploymentForm.find(params[:id])

    respond_to do |format|
      if @unemployment_form.update_attributes(params[:unemployment_form])
        format.html { redirect_to @unemployment_form, notice: 'Unemployment form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unemployment_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unemployment_forms/1
  # DELETE /unemployment_forms/1.json
  def destroy
    @unemployment_form = UnemploymentForm.find(params[:id])
    @unemployment_form.destroy

    respond_to do |format|
      format.html { redirect_to unemployment_forms_url }
      format.json { head :no_content }
    end
  end
end
