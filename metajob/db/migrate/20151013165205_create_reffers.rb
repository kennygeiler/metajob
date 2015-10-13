class CreateReffers < ActiveRecord::Migration
  def change
    create_table :reffers do |t|

      t.timestamps null: false
    end
  end
end
