class CreateHoles < ActiveRecord::Migration
  def self.up
    create_table :holes do |t|
      t.string :concept
      t.float :quantity
      t.integer :user_id
      t.timestamps
    end

    add_index :holes, :quantity
  end

  def self.down
    drop_table :holes
  end
end
