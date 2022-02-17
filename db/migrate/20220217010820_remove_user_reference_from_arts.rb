class RemoveUserReferenceFromArts < ActiveRecord::Migration[6.1]
  def change
    remove_column :arts, :user_id
  end
end
