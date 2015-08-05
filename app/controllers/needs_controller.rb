class NeedsController < ApplicationController
  def index
    @pet = current_user.pets.find(params[:id])
    @needs = @pet.needs.all
  end

  def new
    @pet = current_user.pets.build
    @need = Need.new
  end

  def create
    @pet = current_user.pets.find(params[:id])
    @need = @pet.needs.create(need_params)

    redirect_to pet_path(@pet)
  end

  def show
    @pet = current_user.pets.find(params[:id])
    @need = Need.find(params[:id])
  end

  def edit
    @pet = current_user.pets.find(params[:id])
    @need = Need.find(params[:id])
  end

  def update
    @pet = current_user.pets.find(params[:id])
    @need = Need.find(params[:id])
    @need.update(need_params)

    redirect_to pet_path( @pet )
  end

  def destroy
    @pet = current_user.pets.find(params[:id])
    @need = Need.find(params[:id])
    @need.destroy

    redirect_to pet_path( @pet )
  end

  private
  def need_params
    params.require(:need).permit(:kind, :symptoms, :pet_id, :notes)
  end
end
