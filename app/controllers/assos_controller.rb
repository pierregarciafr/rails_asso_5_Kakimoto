class AssosController < ApplicationController

  def show
    @asso = Asso.find(params[:id])
    @user = User.find_by(loginable: @asso)
    @location = Location.find_by(user_id: @user.id)
  end

  def new
    @asso = Asso.new
    @user = User.new
    @location = Location.new
  end

  def create
    @asso = Asso.new(asso_params)
    @location = Location.new(location_params)
    # raise
    if @asso.save && @asso.create_user(user_params)
      # flash[:success] = "Asso et User créés avec succès !"
      @location.user = @asso.user
      if @location.save
        # flash[:success] = "Localisation créée avec succès !"
        redirect_to @asso
      else
        rendre :new
      end
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

  def location_params
    params.require(:location).permit!
  end
end
