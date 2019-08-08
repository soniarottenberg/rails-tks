class FightsController < ApplicationController
  before_action :set_fight, only: [:show]

  def index
    @fights = Fight.all
  end

  def show
  end

  def new
    @fight = Fight.new
  end

  def create
    @fight = Fight.new(fight_params)
    if @fight.save
      redirect_to fight_path(@fight)
    else
      render :new
    end
  end

  private

  def set_fight
    @fight = Fight.find(params[:id])
  end

  def fight_params
    params.require(:fight).permit()
  end
end
