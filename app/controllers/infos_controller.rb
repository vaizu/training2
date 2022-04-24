class InfosController < ApplicationController

  def new
    @info = Info.new
  end

  def create
    @info = Info.new(info_params)
    if @info.save
      redirect_to info_path(@info)
    else
      render "new"
    end
  end

  def show
    @info = Info.find(params[:id])
  end

  def index
    @info = Info.new
    @info_list = Info.all
  end

  def edit
    @info= Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])
    if @info.update(info_params)
      redirect_to info_path(@info), notice: "You have updated book successfully."
    else
      render "edit"
    end
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy
    redirect_to "/infos"
  end



  private
  def info_params
    params.require(:info).permit(:title,:body)
  end
end

