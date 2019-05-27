class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.references :project, foreign_key: true
      t.string :title
      t.string :description
      t.integer :cost
      t.date :delivery_date

      t.timestamps
    end
  end
end
