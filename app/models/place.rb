class Place < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :address, presence: true
  validates :description, presence: true

  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  has_many :comments , dependent: :destroy
  has_many :photos, dependent: :destroy
end
