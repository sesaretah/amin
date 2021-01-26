class AddPromoteToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :promote, :boolean
  end
end
