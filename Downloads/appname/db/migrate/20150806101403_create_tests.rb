class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :firstname
      t.string :lastname
      t.string :designation
      t.string :origin

      t.timestamps null: false
    end
  end
end
