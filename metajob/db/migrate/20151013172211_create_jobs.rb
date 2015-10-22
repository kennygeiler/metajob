class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :position, null: false
      t.integer :ref_fee, null: false
      t.string :city, null: false
      t.text :description, null: false
      t.boolean :position_filled, default: false
      t.boolean :filled_by_refferal, default: false
      t.integer :company_id
      t.timestamps null: false
    end
  end
end
