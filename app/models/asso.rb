class Asso < ApplicationRecord
  has_one :user #, :class_name => 'User'
end
