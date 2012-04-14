class MedicareFormsController < ApplicationController
  # GET /medicare_forms
  # GET /medicare_forms.json
  def index
    @medicare_forms = MedicareForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medicare_forms }
    end
  end

  # GET /medicare_forms/1
  # GET /medicare_forms/1.json
  def show
    @medicare_form = MedicareForm.find(params[:id])
    @states = State.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @medicare_form }
    end
  end

  # GET /medicare_forms/new
  # GET /medicare_forms/new.json
  def new
    @medicare_form = MedicareForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @medicare_form }
    end
  end

  # GET /medicare_forms/1/edit
  def edit
    @medicare_form = MedicareForm.find(params[:id])
  end

  # POST /medicare_forms
  # POST /medicare_forms.json
  def create
    @medicare_form = MedicareForm.new(params[:medicare_form])

    respond_to do |format|
      if @medicare_form.save
        format.html { redirect_to @medicare_form, notice: 'Medicare form was successfully created.' }
        format.json { render json: @medicare_form, status: :created, location: @medicare_form }
      else
        format.html { render action: "new" }
        format.json { render json: @medicare_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /medicare_forms/1
  # PUT /medicare_forms/1.json
  def update
    @medicare_form = MedicareForm.find(params[:id])

    respond_to do |format|
      if @medicare_form.update_attributes(params[:medicare_form])
        format.html { redirect_to @medicare_form, notice: 'Medicare form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medicare_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicare_forms/1
  # DELETE /medicare_forms/1.json
  def destroy
    @medicare_form = MedicareForm.find(params[:id])
    @medicare_form.destroy

    respond_to do |format|
      format.html { redirect_to medicare_forms_url }
      format.json { head :no_content }
    end
  end
end
