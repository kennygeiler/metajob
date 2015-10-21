class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :github_link
      t.string :linkedin_link
      t.string :resume, null: false
      t.string :ref_code
      t.integer :job_id
      t.integer :reffering_user, null: false
      t.timestamps null: false
    end
  end
end
