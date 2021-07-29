class RemoveColumnIndex < ActiveRecord::Migration[5.2]
  def change
    remove_index :cities, column: :city_id
  end
end
