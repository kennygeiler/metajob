class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :ref_fee
      t.text :description
      t.boolean :position_filled, default: false
      t.integer :company_id
      t.timestamps null: false
    end
  end
end
