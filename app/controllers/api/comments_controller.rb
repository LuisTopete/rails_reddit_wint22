class Api::CommentsController < ApplicationController
  before_action :set_topic
  before_action :set_comment, only: [:show, :update, :destroy]
  # model name comment
  # Topic is the parent
  def index
    render json: @topic.comments
  end

  def show
    render json: @comment
  end

  def create
    @comment = @topic.comments.new(comment_params)
    if @comment.save 
      render json: @comment 
    else
      render json: { errors: @comment.errors }, status: :unproccessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment 
    else
      render json: { errors: @comment.errors }, status: :unproccessable_entity
    end
  end

  def destroy
    @comment.destroy
    render json: { message: 'Comment Deleted' }
  end

  private
    def comment_params
      params.require(:comment).permit(:author, :body)
    end

    def set_topic
      @topic = Topic.find(params[:topic_id])
    end

    def set_comment
      @comment = @topic.comments.find(params[:id])
    end
end