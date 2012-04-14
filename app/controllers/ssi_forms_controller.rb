class SsiFormsController < ApplicationController
  # GET /ssi_forms
  # GET /ssi_forms.json
  def index
    @ssi_forms = SsiForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ssi_forms }
    end
  end

  # GET /ssi_forms/1
  # GET /ssi_forms/1.json
  def show
    @ssi_form = SsiForm.find(params[:id])
    @states = State.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ssi_form }
    end
  end

  # GET /ssi_forms/new
  # GET /ssi_forms/new.json
  def new
    @ssi_form = SsiForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ssi_form }
    end
  end

  # GET /ssi_forms/1/edit
  def edit
    @ssi_form = SsiForm.find(params[:id])
  end

  # POST /ssi_forms
  # POST /ssi_forms.json
  def create
    @ssi_form = SsiForm.new(params[:ssi_form])

    respond_to do |format|
      if @ssi_form.save
        format.html { redirect_to @ssi_form, notice: 'Ssi form was successfully created.' }
        format.json { render json: @ssi_form, status: :created, location: @ssi_form }
      else
        format.html { render action: "new" }
        format.json { render json: @ssi_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ssi_forms/1
  # PUT /ssi_forms/1.json
  def update
    @ssi_form = SsiForm.find(params[:id])

    respond_to do |format|
      if @ssi_form.update_attributes(params[:ssi_form])
        format.html { redirect_to @ssi_form, notice: 'Ssi form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ssi_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ssi_forms/1
  # DELETE /ssi_forms/1.json
  def destroy
    @ssi_form = SsiForm.find(params[:id])
    @ssi_form.destroy

    respond_to do |format|
      format.html { redirect_to ssi_forms_url }
      format.json { head :no_content }
    end
  end
end
