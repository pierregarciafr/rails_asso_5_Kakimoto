class AddRegisterToAssos < ActiveRecord::Migration[6.0]
  def change
    add_column :assos, :register, :string
  end
end
