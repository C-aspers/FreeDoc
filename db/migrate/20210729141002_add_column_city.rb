class AddColumnCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :city, :string
  end
end
