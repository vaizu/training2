class ReleasesController < ApplicationController
  def new
    @release = Release.new
    @music = @release.musics.build ##親モデル.子モデル.buildで子モデルのインスタンス作成
  end

  def create
    @release = Release.new(release_params)
    if @release.save
      redirect_to release_path(@release)
    else
      render :new
    end
  end

  def show
    @release = Release.find(params[:id])
    @sum = 0
  end

  def edit
    @release = Release.find(params[:id])
  end

  def update
    @release = Release.find(params[:id])
    if @release.update(release_params)
      redirect_to release_path(@release)
    else
      render :edit
    end
  end

  private

  def release_params
    params.require(:release).permit(:sub_title, :main_title, :release_day, :release_image, :detail,
                                  musics_attributes:[:id, :release_id, :music_title, :_destroy])
  end
end
