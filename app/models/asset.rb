class Asset < ActiveRecord::Base
	belongs_to :stamp
	has_attached_file :picture,
	    :styles => {
	      :thumb=> "128x128#",
	      :small  => "300x300>",
	      :large => "600x600>"
	        },
	    :default_url => "/images/:style/missing.png"
end
