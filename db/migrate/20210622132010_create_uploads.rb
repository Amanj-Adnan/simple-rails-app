class CreateUploads < ActiveRecord::Migration[6.1]
  def change
    create_table :uploads do |t|
      t.references :model, null: false, foreign_key: true
      t.string :title
      t.string :tof
      t.text :image_data


      t.timestamps
    end
  end
end
