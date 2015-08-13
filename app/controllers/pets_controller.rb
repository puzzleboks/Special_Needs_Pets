class PetsController < ApplicationController
  # before any post action happens, it will authenticate the user
  # mms: only pet's actions?
  before_action :authenticate_user!

  def index
    @pets = current_user.pets
  end

  def show
    @pet = current_user.pets.find(params[:id])
  end

  def new
    @pet = current_user.pets.build
  end

  def edit
    @pet = current_user.pets.find(params[:id])
  end

  def create
    @pet = current_user.pets.new(pet_params)
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

  # mms: destroy?  or delete?
  def destroy
    @pet = current_user.pets.find(params[:id])
    @pet.destroy
    # mms: recommend named routes helper: `root_url`
    redirect_to "/"
  end

  private
  def pet_params
    # mms: we probably do not want to set the created_at, updated_at from the form inputs.
    # mms:   This is about security. We are consciously choosing what attributes can be set via mass-assignment
    params.require(:pet).permit(:user_id, :name, :breed, :pict_url, :vet, :created_at, :updated_at, :weight, :age, :sex, :notes)
  end
end
