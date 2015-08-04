class PetsController < ApplicationController
  # before any post action happens, it will authenticate the user
  before_action :authenticate_user!

  # another devise helper method that retrieves the user object that has been authenticated
  def index
    @pets = current_user.pets
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def create
    @pet = current_user.pets.new(pet_params)
    if @pet.save
      redirect_to user_pets_path
    else
      render 'new'
    end
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(post_params)
      redirect_to @pet
    else
      render 'edit'
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to "/"
  end

  private
  def pet_params
    params.require(:pet).permit(:user_id, :name, :breed, :pict_url)
  end
end
