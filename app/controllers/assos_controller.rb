class AssosController < ApplicationController
  def new
    @asso = Asso.new
    @user = User.new
  end

  def create
    @asso = Asso.new(asso_params)
    if @asso.save && @asso.create_user(user_params)
      redirect_to @asso
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit!
  end

  def asso_params
    params.require(:asso).permit!
  end
end
