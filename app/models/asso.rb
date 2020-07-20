class Asso < ApplicationRecord
  # has_one :user #, :class_name => 'User'
  has_one :user, as: :loginable, dependent: :destroy

  validates :name, presence: true
end
