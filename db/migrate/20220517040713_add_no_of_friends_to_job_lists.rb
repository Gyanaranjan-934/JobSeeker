class AddNoOfFriendsToJobLists < ActiveRecord::Migration[7.0]
  def change
    add_column :job_lists, :frinds, :string
  end
end
