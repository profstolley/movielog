class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :movie, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :movies
  end
end
