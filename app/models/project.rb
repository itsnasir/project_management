class Project < ApplicationRecord

	include Stamper::Stampable	

	has_many :project_members
	has_many :users, :through => :project_members
	has_many :tasks

	has_one :project_billing_detail

	after_create :assign_default_project_member, :unless => Proc.new{|el| el.creator_id.blank?}


	private

	def assign_default_project_member
		self.project_members << ProjectMember.new(:user_id => self.creator_id)	
	end

end
