class Users::UsersController < ApplicationController
  def mypage
    @user = User.find(params[:id])
    @comment = Comment.new
  end

  # def mypage
  #   @user = current_user
  #   @comment = Comment.new
  # end

  def edit
    @user = current_user
  end

	def update
    @user = current_user
	  if @user.update(user_params)
	    flash[:success] = "登録情報を変更しました"
	    redirect_to mypage_path(@user)
	  else
	    render :edit
	  end
	end

	private

  def user_params
    params.require(:user).permit(:name, :email, :introduction, :image)
  end
end
