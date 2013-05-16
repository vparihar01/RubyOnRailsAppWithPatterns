class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :path
      t.string :name
      t.string :description
      t.integer :category_id
      t.timestamps
    end
  end
end
