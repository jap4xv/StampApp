class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :stamps, through: :categorizations
end