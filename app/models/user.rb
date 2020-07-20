class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # belongs_to :asso, optional: true, dependent: :destroy
  # accepts_nested_attributes_for :asso

  belongs_to :loginable, polymorphic: true, touch: true, optional: true
  accepts_nested_attributes_for :loginable

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
    BCrypt::Password.create(string, cost: cost)
  end
end
