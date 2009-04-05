class CreateMonthOutcomes < ActiveRecord::Migration
  def self.up
    create_table :month_outcomes do |t|
      t.integer :month
      t.integer :year
      t.float :outcome, :default => 0
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :month_outcomes
  end
end
