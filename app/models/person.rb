class Person < ApplicationRecord
  has_one :user, as: :loginable, dependent: :destroy

  validates :pseudo, presence: true, uniqueness: true

end
