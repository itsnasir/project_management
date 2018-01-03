class Task < ApplicationRecord

	belongs_to :project
	belongs_to :user
	belongs_to :status, :optional => true

	has_many :task_work_logs

	before_create :set_default_status

	private

	def set_default_status
		self.status = Status.to_do.last
	end



end
