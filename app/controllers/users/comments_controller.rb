class Users::CommentsController < ApplicationController
  def create
    # user = User.find(params[:user_id])
    # comment = Comment.new(comment_params)
    # comment.commenter_id = current_user.id
    # comment.commentef_id = user.id
    # comment.save
    # redirect_to mypage_path(user)
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
