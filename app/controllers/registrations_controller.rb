class RegistrationsController < ApplicationController
  def new
    @fight = Fight.find(params[:fight_id])
    @registration = Registration.new
  end

  def create
    @fight = Fight.find(params[:fight_id])
    @registration = Registration.new(registration_params)
    @registration.fight = @fight
    if @registration.save
      redirect_to fight_path(@fight)
    else
      render :new
    end
  end

  private

  def set_fight
    @registration = Registration.find(params[:id])
  end

  def registration_params
    params.require(:registration).permit(:fighter_id, :fight_id)
  end
end
