class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :content
      t.attachment :image
      t.integer :category_id

      t.timestamps
    end
  end
end
