class Status < ApplicationRecord

	scope :to_do, -> {where("LOWER(alias) =?", "todo")}

	before_create :set_alias


	private

	def set_alias
    return if name.blank?   
    aliased = name.to_s.downcase.gsub(/[^0-9A-Za-z]/, '').gsub(" ", "_")
    self.alias = aliased
  end

end
