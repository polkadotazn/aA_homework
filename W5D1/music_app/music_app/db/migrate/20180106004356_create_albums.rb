class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.string :year, null: false
      t.string :production_env, null: false

      t.timestamps
    end
    add_index 
  end
end
