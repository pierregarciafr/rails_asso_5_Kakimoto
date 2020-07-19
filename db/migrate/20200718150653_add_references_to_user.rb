class AddReferencesToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :asso, foreign_key: true
  end
end
