class RenameAnimalTitleToName < ActiveRecord::Migration
  def self.up
    rename_column(:animals, :title, :name)
  end

  def self.down
    rename_column(:animals, :name, :title)
  end
end
