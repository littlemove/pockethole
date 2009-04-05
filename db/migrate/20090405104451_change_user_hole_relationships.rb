class ChangeUserHoleRelationships < ActiveRecord::Migration
  def self.up
    rename_column :holes, :user_id, :month_outcome_id
  end

  def self.down
    rename_column :holes, :month_outcome_id, :user_id
  end
end
