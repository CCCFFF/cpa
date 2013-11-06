class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :period_days
      t.integer :req_credit_self_study
      t.integer :req_credit_group_live
      t.integer :req_credit_group_internet

      t.timestamps
    end
  end
end
