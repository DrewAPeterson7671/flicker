class ProfilesController < ApplicationController

  def index
    # Code for listing all profiles goes here.
    @profiles = Profile.all
    render :index
  end

  def new
    # Code for new profile form goes here.
    @profile = Profile.new
    render :new
  end

  def create
    # Code for creating a new profile goes here.
    @profile = Profile.new(profile_params.merge(user_id: current_user.id))
    if @profile.save
      flash[:notice] = "Profile successfully added!"
      redirect_to profiles_path
    else
      render :new
    end
  end

  def edit
    # Code for edit profile form goes here.
    @profile = Profile.find(params[:id])
    render :edit
  end

  def show
    # Code for showing a single profile goes here.
    @profile = Profile.find(params[:id])
    render :show
  end

  def update
    # Code for updating an profile goes here.
    @profile= Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to profiles_path
    else
      render :edit
    end
  end

  def destroy
    # Code for deleting an profile goes here.
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to profiles_path
  end

  private
  def profile_params
    params.require(:profile).permit(:user_id)
  end

end
