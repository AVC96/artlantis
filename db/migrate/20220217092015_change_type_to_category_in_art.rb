class ChangeTypeToCategoryInArt < ActiveRecord::Migration[6.1]
  def change
    remove_column :arts, :type
    add_column :arts, :category, :string
  end
end
