class Calendar < ApplicationRecord
  belongs_to :user
  has_many :pet_information
end
