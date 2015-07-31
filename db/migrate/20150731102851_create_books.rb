class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :auther
      t.text :description
      t.string :amazon_id
      t.integer :rating
      t.date :finished_on

      t.timestamps null: false
    end
  end
end
