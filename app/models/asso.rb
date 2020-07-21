class Asso < ApplicationRecord
  # has_one :user #, :class_name => 'User'
  has_one :user, as: :loginable, dependent: :destroy

  validates :name, presence: true
  validates :register, presence: true, format: { with: /\A[a-zA-Z]\d{8}\z/ }
end
