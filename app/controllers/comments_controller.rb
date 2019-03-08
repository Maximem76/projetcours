class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def comment_params
   params.require(:comment).permit(:article, :body)
  end
end
