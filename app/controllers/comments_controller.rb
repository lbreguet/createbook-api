# frozen_string_literal: true
class CommentsController < OpenReadController
  before_action :set_comment, only: [:update, :destroy]

  # GET /posts/post_id/comments
  def index
    post = Post.find(params[:post_id])

    @comments = post.comments

    render json: @comments.sort
  end

  # GET /comments/1
  def show
    render json: Comment.find(params[:id])
  end

  # POST /posts/:post_id/comments
  def create
    post = Post.find(params[:post_id])

    @comment = post.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = current_user.comments.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def comment_params
    params.require(:comment).permit(:body)
  end

  def search_params
    params.permit(:post_id)
  end
end
