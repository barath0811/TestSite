class User::PropertiesController < ApplicationController
  before_action :set_user_property, only: [:show, :edit, :update, :destroy]

  # GET /user/properties
  # GET /user/properties.json
  def index
    @user_properties = User::Property.all
  end

  # GET /user/properties/1
  # GET /user/properties/1.json
  def show
  end

  # GET /user/properties/new
  def new
    @user_property = User::Property.new
  end

  # GET /user/properties/1/edit
  def edit
  end

  # POST /user/properties
  # POST /user/properties.json
  def create
    @user_property = User::Property.new(user_property_params)

    respond_to do |format|
      if @user_property.save
        format.html { redirect_to @user_property, notice: 'Property was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_property }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/properties/1
  # PATCH/PUT /user/properties/1.json
  def update
    respond_to do |format|
      if @user_property.update(user_property_params)
        format.html { redirect_to @user_property, notice: 'Property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/properties/1
  # DELETE /user/properties/1.json
  def destroy
    @user_property.destroy
    respond_to do |format|
      format.html { redirect_to user_properties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_property
      @user_property = User::Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_property_params
      params[:user_property]
    end
end
