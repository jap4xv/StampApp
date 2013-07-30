class Stamp < ActiveRecord::Base	
	acts_as_taggable
	acts_as_taggable_on :categories
	has_many :assets
	has_and_belongs_to_many :categories
	accepts_nested_attributes_for :assets, :allow_destroy => true
	

	has_attached_file :image, :styles => {  :large => "600x600>", :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :image2, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :image3, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :image4, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"

	validates_attachment_presence :image
	#validates_attachment_size :image, :less_than => 5.megabytes
	#validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
