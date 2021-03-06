class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      # t.integer :imageable_id
      # t.string :imageable_type
      t.references :imageable, polymorphic: true, index: true

      t.timestamps null: false
    end

    add_index :pictures, :imageable_id

  end
end
