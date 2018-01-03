module Stamper
  module Stampable
  	def self.included(base)
  	  base.class_eval do

  	  	belongs_to :creator, :class_name => "User", :foreign_key => "creator_id", :optional => true 
		 		belongs_to :updater, :class_name => "User", :foreign_key => "updater_id", :optional => true

		 		before_create :set_creator_id, :if => :has_stampable_column?
		 		before_save :set_updater_id, :if => :has_stampable_column?


		 		private

		 		def has_stampable_column?
		 		  self.methods.include?(:creator_id) && self.methods.include?(:updater_id)
		 		end

		 		def set_creator_id
		 		  self.creator_id = User.current.id unless User.current.blank?
		 		end

		 		def set_updater_id
		 		  self.updater_id = User.current.id unless User.current.blank?
		 		end

  	  end # base.class_eval
  	end # self.included(base)
  end # Stampable
end #Stamper