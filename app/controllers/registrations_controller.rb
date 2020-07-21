
# useless controller


class RegistrationsController < Devise::RegistrationsController



  def new # new_asso
    # build_resource({})
    # resource.loginable = Asso.new
    # # self.resource.asso = Asso.new
    # respond_with self.resource # respond_with(@product, :location => products_url)

  end

  def create
    raise
    @user = User.new(user_params)
    @asso = Asso.new(asso_params)
    @user.save

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
