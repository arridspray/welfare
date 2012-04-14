class WicFormsController < ApplicationController
  # GET /wic_forms
  # GET /wic_forms.json
  def index
    @wic_forms = WicForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wic_forms }
    end
  end

  # GET /wic_forms/1
  # GET /wic_forms/1.json
  def show
    @wic_form = WicForm.find(params[:id])
    @states = State.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wic_form }
    end
  end

  # GET /wic_forms/new
  # GET /wic_forms/new.json
  def new
    @wic_form = WicForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wic_form }
    end
  end

  # GET /wic_forms/1/edit
  def edit
    @wic_form = WicForm.find(params[:id])
  end

  # POST /wic_forms
  # POST /wic_forms.json
  def create
    @wic_form = WicForm.new(params[:wic_form])

    respond_to do |format|
      if @wic_form.save
        format.html { redirect_to @wic_form, notice: 'Wic form was successfully created.' }
        format.json { render json: @wic_form, status: :created, location: @wic_form }
      else
        format.html { render action: "new" }
        format.json { render json: @wic_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wic_forms/1
  # PUT /wic_forms/1.json
  def update
    @wic_form = WicForm.find(params[:id])

    respond_to do |format|
      if @wic_form.update_attributes(params[:wic_form])
        format.html { redirect_to @wic_form, notice: 'Wic form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wic_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wic_forms/1
  # DELETE /wic_forms/1.json
  def destroy
    @wic_form = WicForm.find(params[:id])
    @wic_form.destroy

    respond_to do |format|
      format.html { redirect_to wic_forms_url }
      format.json { head :no_content }
    end
  end
end
