class FightersController < ApplicationController
  before_action :set_fighter, only: [:show, :edit, :update, :destroy]

  def index
    @fighters = Fighter.all
  end

  def show
  end

  def new
    @fighter = Fighter.new
  end

  def create
    @fighter = Fighter.new(fighter_params)
    @fighter.save
    redirect_to fighters_path(@fighter)
  end

  def edit
  end

  def update
    @fighter.update(fighter_params)
  end

  def destroy
    @fighter.destroy
    redirect_to fighters_path(@fighter)
  end

  private

  def set_fighter
    @fighter = Fighter.find(params[:id])
  end

  def fighter_params
    params.require(:fighter).permit(:name, :lifepoints, :attack_points, :defense_points, :avatar)
  end
end
