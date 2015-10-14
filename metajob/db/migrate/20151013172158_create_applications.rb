class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :full_name
      t.string :email
      t.string :github_link
      t.string :linkedin_link
      t.string :resume
      t.string :ref_code
      t.integer :job_id
      t.timestamps null: false
    end
  end
end
