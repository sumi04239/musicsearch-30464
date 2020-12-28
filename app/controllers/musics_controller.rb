class MusicsController < ApplicationController
  def index
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      redirect_to music_path
    else
      render :new
    end
  end

  def search
  end

  private 
    def music_params
      params.require(:music).permit(:text).merge(user_id: current_user.id)
    end
end