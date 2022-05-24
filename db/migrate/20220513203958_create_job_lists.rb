class CreateJobLists < ActiveRecord::Migration[7.0]
  def change
    create_table :job_lists do |t|
      t.string :job_role
      t.string :company_name
      t.string :location
      t.string :job_type
      t.text :job_description
      t.string :salary
      t.string :url
      t.date :last_date

      t.timestamps
    end
  end
end
