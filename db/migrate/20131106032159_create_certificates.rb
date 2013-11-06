class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.string :credit_category
      t.integer :credit_total
      t.date :credit_date
      t.string :credit_method

      t.timestamps
    end
  end
end
