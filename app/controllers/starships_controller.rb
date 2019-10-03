class StarshipsController < ApplicationController
  before_action :authenticate_user!

  def new
    @starship = Starship.new
  end

  def edit
  end

  def create
    @starship = Starship.new(starship_params)

    respond_to do |format|
      if @starship.save
        format.html { redirect_to starships_url, notice: 'Starship was successfully created.' }
        format.json { render :show, status: :created, location: @starship }
      else
        format.html { render :new }
        format.json { render json: @starship.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @starship.update(starship_params)
        format.html { redirect_to starships_url, notice: 'Starship was successfully updated.' }
        format.json { render :show, status: :ok, location: @starship }
      else
        format.html { render :edit }
        format.json { render json: @starship.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @starship.destroy
    respond_to do |format|
      format.html { redirect_to starships_url, notice: 'Starship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_starship
      @starship = Starship.find(params[:id])
    end

    def starship_params
      params.require(:starship).permit(:name, :class_name, :registry)
    end
end
