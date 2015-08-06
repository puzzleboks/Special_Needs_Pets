class NeedsController < ApplicationController
  def index
    @pet = Pet.find(params[:pet_id])
    @needs = @pet.need.all
  end

  def new
    @pet = Pet.find(params[:pet_id])
    @need = Need.new
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @need = @pet.needs.create(need_params)

    redirect_to pet_path(@pet)
  end

  def show
    @pet = Pet.find(params[:pet_id])
    @need = Need.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:pet_id])
    @need = Need.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:pet_id])
    @need = Need.find(params[:id])
    @need.update(need_params)

    redirect_to pet_path( @pet )
  end

  def destroy
    @pet = Pet.find(params[:pet_id])
    @need = Need.find(params[:id])
    @need.destroy

    redirect_to pet_path( @pet )
  end

  private
  def need_params
    params.require(:need).permit(:kind, :symptoms, :created_at, :updated_at, :pet_id, :notes)
  end
end
