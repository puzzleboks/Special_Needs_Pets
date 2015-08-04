class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :special_needs
  # has_many :treatments, through: :special_needs # pet.treatments
end
