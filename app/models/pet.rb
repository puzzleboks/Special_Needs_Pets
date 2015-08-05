class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :needs
  has_many :treatments, through: :needs # pet.treatments
end
