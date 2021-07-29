class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.belongs_to :city, index: true
      t.string :zip_code  
      t.timestamps
    end
  end
end
