class CommentsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "0000"
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def edit
    @comment = Post.find(params[:id])

    @comment.destroy
    redirect_to posts_path
  end

  private def comment_params
    params.require(:comment).permit(:username, :body)
  end
end

