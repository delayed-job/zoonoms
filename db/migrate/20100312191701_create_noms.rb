class CreateNoms < ActiveRecord::Migration
  def self.up
    create_table :noms do |t|
      t.references :animal
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :noms
  end
end
