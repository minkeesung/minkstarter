class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.string :description
      t.date :end_date
      t.integer :funding_goal
      t.text :details
      t.integer :creator_id
      t.integer :category_id
      t.string :image_url

      t.timestamps
    end
  end
end
