class PersonnelsController < ApplicationController
  before_action :authenticate_user!

  def index
    @personnels = Personnel.all
  end

  def show
    @personnel = Personnel.find(params[:id])
    @ordered_ranks = @personnel.ranks.all.order(end_date: :desc)
  end

  def new
    @personnel = Personnel.new
  end

  def edit
  end

  def create
    @personnel = Personnel.new(personnel_params)

    respond_to do |format|
      if @personnel.save
        format.html { redirect_to @personnel, notice: 'Personnel was successfully created.' }
        format.json { render :show, status: :created, location: @personnel }
      else
        format.html { render :new }
        format.json { render json: @personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @personnel.update(personnel_params)
        format.html { redirect_to @personnel, notice: 'Personnel was successfully updated.' }
        format.json { render :show, status: :ok, location: @personnel }
      else
        format.html { render :edit }
        format.json { render json: @personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @personnel.destroy
    respond_to do |format|
      format.html { redirect_to personnels_url, notice: 'Personnel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_personnel
    @personnel = Personnel.find(params[:id])
  end

  def personnel_params
    params.require(:personnel).permit(:name, :gender, :species, :affiliation)
  end
end
