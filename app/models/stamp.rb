class Stamp < ActiveRecord::Base	
	acts_as_taggable
	has_many :assets
	accepts_nested_attributes_for :assets, :allow_destroy => true
	

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"
	
	#validates_attachment_presence :image
	#validates_attachment_size :image, :less_than => 5.megabytes
	#validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
