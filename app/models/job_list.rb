class JobList < ApplicationRecord
	has_one_attached:avatar
	# mount_uploader:avatar,AvatarUploader

	# belongs_to :user



	JOB_TYPES = ["Full-time","Part-time","Contract","Freelance"]
end
