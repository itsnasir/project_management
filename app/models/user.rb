class User < ApplicationRecord
	rolify
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :project_members
	has_many :projects, :through => :project_members
	has_many :tasks

	def self.current
		Thread.current[:current_user]
	end

	def self.current=(usr)
		Thread.current[:current_user] = usr
	end
	       
end
