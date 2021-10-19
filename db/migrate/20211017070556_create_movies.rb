class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :body
      t.string :image_id
      t.float :review
      t.datetime :created_at
      t.datetime :update_at
      t.timestamps
    end
  end
end
