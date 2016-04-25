class AddCityIdToPerson < ActiveRecord::Migration
  def change
    add_column :people, :city_id, :integer
  end
end
