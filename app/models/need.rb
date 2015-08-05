class Need < ActiveRecord::Base
  belongs_to :pets
  has_many :treatments, dependent: :destroy
end
