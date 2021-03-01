class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_author?, only: [:edit, :update, :destroy]

  def create
    @user = current_user
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.author = @user
    if @comment.save
      flash[:notice] = "Your comment has been saved!"
      redirect_to article_path(params[:article_id])
    else
      puts @comment.errors.messages
      puts "Damn son! Your comment hasn't been saved for some reason 🤔"
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @article = Article.find(params[:article_id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Your comment has been updated!"
      redirect_to article_path(params[:article_id])
    else
      flash.now[:alert] = "We cannot update this comment for the following reason(s):"
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      flash[:alert] = "Your comment has been deleted."
      redirect_to article_path(params[:article_id]) 
    else 
      flash.now[:alert] = "We cannot delete this comment the following reason(s):"
      render :edit
    end
  end

  private
  def comment_params
    comment_params = params.require(:comment).permit(:content)
  end

  def is_author?
    @comment = Comment.find(params[:id])
    unless current_user && (@comment.author == current_user)
      flash[:alert] = "Sorry pal! You can't just stuff that's not yours to begin with 😁"
      redirect_to root_path 
    end
  end
end
