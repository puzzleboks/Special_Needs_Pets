class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :needs, dependent: :destroy
  has_many :treatments, through: :needs # pet.treatments
end
