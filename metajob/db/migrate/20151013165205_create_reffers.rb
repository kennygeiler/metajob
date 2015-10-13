class CreateReffers < ActiveRecord::Migration
  def change
    create_table :reffers do |t|
      t.string :invite_code
      t.string :ref_code
      t.timestamps null: false
    end
  end
end
