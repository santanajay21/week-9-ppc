class CreatePartySupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :party_supplies do |t|
      t.integer :party_id
      t.integer :supply_id

      t.timestamps
    end
  end
end
