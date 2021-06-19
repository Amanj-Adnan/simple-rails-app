class CreateModelPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :model_posts do |t|
      t.belongs_to :model, null: false, foreign_key: true
      t.string :title
      t.string :content
      t.string :image

      t.timestamps
    end
  end
end
