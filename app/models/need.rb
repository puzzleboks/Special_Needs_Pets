class Need < ActiveRecord::Base
  belongs_to :pet
  has_many :treatments, dependent: :destroy
end
