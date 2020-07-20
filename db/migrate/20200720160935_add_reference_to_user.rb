class AddReferenceToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :loginable, polymorphic: true, index: true
  end
end
