class DiarysController < ApplicationController
  def index
  end

  def new
    @diary = Diary.new
  end
end
