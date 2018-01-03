class ProjectBillingDetail < ApplicationRecord

	belongs_to :project

	# enum for billing_method
	enum billing_method: {
	  flat_rate: 0,
	  hourly: 1
	}

end
