class PaymentNotification < ActiveRecord::Base
	belongs_to :stamp
	serialize :params
	after_create :mark_stamp_as_purchased

	private

	def mark_stamp_as_purchased
	  if status == "Completed"
	    stamp.update_attribute(:description, 'Already Purchased')
	  end
	end
end
