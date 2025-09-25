class PostsController < ApplicationController
  def index
    posts = Post.all

    render json: posts
  end

  def create
    post = Post.new(
      title: params[:title],
      text: params[:text]
    )

    if post.save
      render json: post
    else
      render json: post, status: :unprocessable_entity
    end
  end
end
