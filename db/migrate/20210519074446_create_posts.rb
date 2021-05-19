class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.string :desc

      t.timestamps

    end
  end
end