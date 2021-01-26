class AddRankToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :rank, :integer
  end
end
