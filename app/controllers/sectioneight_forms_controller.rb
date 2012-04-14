class SectioneightFormsController < ApplicationController
  # GET /sectioneight_forms
  # GET /sectioneight_forms.json
  def index
    @sectioneight_forms = SectioneightForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sectioneight_forms }
    end
  end

  # GET /sectioneight_forms/1
  # GET /sectioneight_forms/1.json
  def show
    @sectioneight_form = SectioneightForm.find(params[:id])
    @states = State.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sectioneight_form }
    end
  end

  # GET /sectioneight_forms/new
  # GET /sectioneight_forms/new.json
  def new
    @sectioneight_form = SectioneightForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sectioneight_form }
    end
  end

  # GET /sectioneight_forms/1/edit
  def edit
    @sectioneight_form = SectioneightForm.find(params[:id])
  end

  # POST /sectioneight_forms
  # POST /sectioneight_forms.json
  def create
    @sectioneight_form = SectioneightForm.new(params[:sectioneight_form])

    respond_to do |format|
      if @sectioneight_form.save
        format.html { redirect_to @sectioneight_form, notice: 'Sectioneight form was successfully created.' }
        format.json { render json: @sectioneight_form, status: :created, location: @sectioneight_form }
      else
        format.html { render action: "new" }
        format.json { render json: @sectioneight_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sectioneight_forms/1
  # PUT /sectioneight_forms/1.json
  def update
    @sectioneight_form = SectioneightForm.find(params[:id])

    respond_to do |format|
      if @sectioneight_form.update_attributes(params[:sectioneight_form])
        format.html { redirect_to @sectioneight_form, notice: 'Sectioneight form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sectioneight_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sectioneight_forms/1
  # DELETE /sectioneight_forms/1.json
  def destroy
    @sectioneight_form = SectioneightForm.find(params[:id])
    @sectioneight_form.destroy

    respond_to do |format|
      format.html { redirect_to sectioneight_forms_url }
      format.json { head :no_content }
    end
  end
end
