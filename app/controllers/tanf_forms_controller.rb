class TanfFormsController < ApplicationController
  # GET /tanf_forms
  # GET /tanf_forms.json
  def index
    @tanf_forms = TanfForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tanf_forms }
    end
  end

  # GET /tanf_forms/1
  # GET /tanf_forms/1.json
  def show
    @tanf_form = TanfForm.find(params[:id])
    @states = State.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tanf_form }
    end
  end

  # GET /tanf_forms/new
  # GET /tanf_forms/new.json
  def new
    @tanf_form = TanfForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tanf_form }
    end
  end

  # GET /tanf_forms/1/edit
  def edit
    @tanf_form = TanfForm.find(params[:id])
  end

  # POST /tanf_forms
  # POST /tanf_forms.json
  def create
    @tanf_form = TanfForm.new(params[:tanf_form])

    respond_to do |format|
      if @tanf_form.save
        format.html { redirect_to @tanf_form, notice: 'Tanf form was successfully created.' }
        format.json { render json: @tanf_form, status: :created, location: @tanf_form }
      else
        format.html { render action: "new" }
        format.json { render json: @tanf_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tanf_forms/1
  # PUT /tanf_forms/1.json
  def update
    @tanf_form = TanfForm.find(params[:id])

    respond_to do |format|
      if @tanf_form.update_attributes(params[:tanf_form])
        format.html { redirect_to @tanf_form, notice: 'Tanf form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tanf_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tanf_forms/1
  # DELETE /tanf_forms/1.json
  def destroy
    @tanf_form = TanfForm.find(params[:id])
    @tanf_form.destroy

    respond_to do |format|
      format.html { redirect_to tanf_forms_url }
      format.json { head :no_content }
    end
  end
end
