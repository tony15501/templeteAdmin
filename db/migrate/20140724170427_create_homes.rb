class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.attachment :logo
      t.attachment :slider
      t.text :promocional
      t.text :servicio1
      t.text :servicio2
      t.text :servicio3
      t.string :about
      t.integer :telefono
      t.integer :fax
      t.string :email
      t.string :direccion

      t.timestamps
    end
  end
end
