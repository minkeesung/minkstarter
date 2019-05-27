class CreatePledges < ActiveRecord::Migration[5.2]
  def change
    create_table :pledges do |t|
      t.integer :amount
      t.string :pledgeable_type
      t.integer :pledgeable_id
      t.integer :backer_id

      t.timestamps
    end
  end
end
