class PeopleController < ApplicationController
  def show
  end

  def new
    @person = Person.new
    @user = User.new
  end

  def create
    @person = Person.new(person_params)
    # @user = User.new(user_params)
    if @person.save && @person.create_user(user_params)
      redirect_to @person
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit!
  end

  def person_params
    params.require(:person).permit!
  end
end
