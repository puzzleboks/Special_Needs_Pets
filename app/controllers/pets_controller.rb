class PetsController < ApplicationController
  # before any post action happens, it will authenticate the user
  before_action :authenticate_user!

  def index
    @pets = current_user.pets
  end

  def show
    @pet = current_user.pets.find(params[:id])
  end

  def new
    @pet = current_user.pet.build
  end

  def edit
    @pet = current_user.pets.find(params[:id])
  end

  def create
    @pet = current_user.pet.new(pet_params)
    if @pet.save
      redirect_to pets_path
    else
      render 'new'
    end
  end

  def update
    @pet = current_user.pets.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path
    else
      render 'edit'
    end
  end

  def destroy
    @pet = current_user.pets.find(params[:id])
    @pet.destroy
    redirect_to "/"
  end

  private
  def pet_params
    params.require(:pet).permit(:user_id, :name, :breed, :pict_url, :vet, :created_at, :updated_at, :weight, :age, :sex, :notes)
  end
end
