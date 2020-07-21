class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
    @user = User.find_by(loginable: @person)
    @location ||= Location.find_by(user_id: @user.id)
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
