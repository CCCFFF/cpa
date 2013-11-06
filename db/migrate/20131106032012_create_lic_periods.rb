class CreateLicPeriods < ActiveRecord::Migration
  def change
    create_table :lic_periods do |t|
      t.date :initial_date
      t.date :renewal_date
      t.integer :state_id
      t.integer :user_id
      t.integer :credit_self_study_total
      t.integer :credit_group_live_total
      t.integer :credit_group_internet_total

      t.timestamps
    end
  end
end
