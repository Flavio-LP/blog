class BlogController < ApplicationController
  def index
    @posts = Post.where("published_date <= ?", Time.zone.now).first
  end
end
