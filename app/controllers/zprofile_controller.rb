# class ProfilesController < ApplicationController
#   # before_action :set_profile, only: [:show, :edit, :update, :destroy]
#
#   # GET /profiles
#   def index
#     if params[:direction]
#       @profile = Profile.find(params[:profile_id])
#     end
#     @profiles = Profile.all.sort { |a, b| b.created_at <=> a.created_at }
#   end
#
#   # GET /profiles/1
#   def show
#     @profile = Profile.find(params[:id])
#     @answers =  @profile.answers
#   end
#
#   # GET /profiles/new
#   def new
#     @profile = Profile.new
#   end
#
#   # GET /profiles/1/edit
#   def edit
#   end
#
#   # POST /profiles
#   def create
#     @profile = Profile.new(profile_params)
#     @profile.profile_image_id.attach(params[:profile_image_id])
#
#     if @profile.save
#       redirect_to @profile, notice: 'Profile was successfully created.'
#     else
#       render :new
#     end
#   end
#
#   # PATCH/PUT /profiles/1
#   def update
#     if @profile.update(profile_params)
#       redirect_to @profile, notice: 'Profile was successfully updated.'
#     else
#       render :edit
#     end
#   end
#
#   # DELETE /profiles/1
#   def destroy
#     @profile.destroy
#     redirect_to profiles_url, notice: 'Profile was successfully destroyed.'
#   end
#
#   private
#     # Use callbacks to share common setup or constraints between actions.
#     # def set_profile
#     #   @profile = Profile.find(params[:id])
#     # end
#
#     # Only allow a trusted parameter "white list" through.
#     def profile_params
#       params.require(:profile).permit(:user_id, :body_text, :title)
#     end
# end