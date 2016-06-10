class CommentsController < ApplicationController

  def index
    @comments = current_user.comments.order('created_at DESC')
  end

  def create
    @comment = current_user.comments.build(comment_params)
    @comment.save
    if @comment.save
      redirect_to :back, notice: "Comment added"
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:subject, :content, :commented_page)
    end
end
