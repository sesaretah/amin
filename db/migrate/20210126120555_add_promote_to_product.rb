class AddPromoteToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :promote, :boolean
  end
end
