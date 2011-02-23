class CreateNoms < ActiveRecord::Migration
  def self.up
    create_table :noms do |t|
      t.integer :user_id
      t.integer :animal_id
      t.string :location
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :noms
  end
end
