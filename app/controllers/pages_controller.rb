class PagesController < ApplicationController
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to pages_path, notice: 'スポットが追加されました。'
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end

  def index
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:name, :address, :business_hours_start, :business_hours_end, :fee, :eat_walk, :stay_time, :description, images: [])
  end
end
