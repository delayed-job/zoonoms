class CreateNoms < ActiveRecord::Migration
  def self.up
    create_table :noms do |t|
      t.reference :animal
      t.reference :user

      t.timestamps
    end
  end

  def self.down
    drop_table :noms
  end
end
