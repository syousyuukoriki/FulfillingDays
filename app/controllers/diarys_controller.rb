class DiarysController < ApplicationController
  def index
    @diarys = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    end
  end

private
  
  def diary_params
    params.require(:diary).permit(:title, :day, :rate, :event, :image)
  end
end
