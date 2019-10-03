class StarshipRostersController < ApplicationController
  before_action :authenticate_user!

  def index
    @starship_rosters = StarshipRoster.all
  end

  def show
    @starship_roster = StarshipRoster.find(params[:id])
  end

  def new
    @starship_roster = StarshipRoster.new
  end

  def edit
  end

  def create
    binding.pry
    @starship_roster = StarshipRoster.new(starship_roster_params)
    respond_to do |format|
      if @starship_roster.save
        format.html { redirect_to starship_rosters_url, notice: 'Starship Roster was successfully created.' }
        format.json { render :show, status: :created, location: @starship_roster }
      else
        format.html { render :new }
        format.json { render json: @starship_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @starship_roster.destroy
    binding.pry
    respond_to do |format|
      format.html { redirect_to starship_rosters_url, notice: 'Starship Roster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_starship_roster
    @starship_roster = StarshipRoster.find(params[:id])
  end

  def starship_roster_params
    params.require(:starship_roster).permit(:name, :gender, :species, :affiliation, :personnel_id, :starship_id, :start_date, :end_date, :reason)
  end
end
