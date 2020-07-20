class RegistrationsController < Devise::RegistrationsController

  def new # new_asso
    build_resource({})
    self.resource.asso = Asso.new
    respond_with self.resource
  end

  def create
    @user = User.new sign_up_params

    if @user.save
      flash[:success] = "Inscription réussie !"
      redirect_to root_path
    else
      flash[:alert] = "Une erreur est survenue dsl."
      render :new
    end
    # super
  end
end
