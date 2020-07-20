class Person < ApplicationRecord
  has_one :user, as: :loginable, dependent: :destroy
end
