class RemoveReferenceToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :asso, index: true
  end
end
