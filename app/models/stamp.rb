class Stamp < ActiveRecord::Base	
	acts_as_taggable
	#acts_as_taggable_on :categories
	has_many :assets
	has_many :categorizations
  has_many :categories, through: :categorizations
	accepts_nested_attributes_for :assets, :allow_destroy => true
	

  
	has_attached_file :image, :styles => {  :large => "600x600>", :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :image2, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :image3, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :image4, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :image5, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "128x128>" }, :default_url => "/images/:style/missing.png"

  def self.search(search)
    if Rails.env.development?
      if search
        #find(:all, :conditions => ["\"Title\" LIKE ?", "%#{search}%"] )
        Stamp.where(["\"Title\" LIKE ?" , "%#{search}%"] ).all
      else
        Stamp.all
      end
    else
      if search
        search(search)
      else
        Stamp.all
      end
    end
  end

	#validates_attachment_presence :image
	#validates_attachment_size :image, :less_than => 5.megabytes
	#validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
