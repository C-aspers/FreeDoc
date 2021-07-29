class RemoveColumnCity < ActiveRecord::Migration[5.2]
  def change
   remove_column :cities, :city, :belongs_to
  end
end
