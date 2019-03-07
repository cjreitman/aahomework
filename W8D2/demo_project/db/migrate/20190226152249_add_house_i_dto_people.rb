class AddHouseIDtoPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :House_id, :integer
  end
end
