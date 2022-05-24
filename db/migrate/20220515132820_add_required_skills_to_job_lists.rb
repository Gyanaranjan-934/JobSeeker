class AddRequiredSkillsToJobLists < ActiveRecord::Migration[7.0]
  def change
    add_column :job_lists, :req_skill, :text
    add_column :job_lists, :qualification, :text
    add_column :job_lists, :experience, :text
  end
end
