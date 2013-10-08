class NewPeopleController < ApplicationController
  before_action :set_new_person, only: [:show, :edit, :update, :destroy]

  # GET /new_people
  # GET /new_people.json
  def index
    @new_people = NewPerson.all
  end

  # GET /new_people/1
  # GET /new_people/1.json
  def show
  end

  # GET /new_people/new
  def new
    @new_person = NewPerson.new
  end

  # GET /new_people/1/edit
  def edit
  end

  # POST /new_people
  # POST /new_people.json
  def create
    @new_person = NewPerson.new(new_person_params)

    respond_to do |format|
      if @new_person.save
        format.html { redirect_to @new_person, notice: 'New person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @new_person }
      else
        format.html { render action: 'new' }
        format.json { render json: @new_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_people/1
  # PATCH/PUT /new_people/1.json
  def update
    respond_to do |format|
      if @new_person.update(new_person_params)
        format.html { redirect_to @new_person, notice: 'New person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @new_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_people/1
  # DELETE /new_people/1.json
  def destroy
    @new_person.destroy
    respond_to do |format|
      format.html { redirect_to new_people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_person
      @new_person = NewPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_person_params
      params.require(:new_person).permit(:first, :last)
    end
end
