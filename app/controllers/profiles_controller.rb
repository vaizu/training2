class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profiles_path(@profile)
    else
      render "new"
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile= Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to profile_path(@profile), notice: "You have updated book successfully."
    else
      render "edit"
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to "/"
  end



  private
  def profile_params
    params.require(:profile).permit(:profile)
  end
end
