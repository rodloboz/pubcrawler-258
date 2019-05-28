class Pub < ApplicationRecord
  DISTRICTS = [
    "Brunswick",
    "Carlton",
    "Central Business District",
    "Collingwood",
    "Docklands",
    "East Melbourne",
    "Elwood",
    "Fitzroy",
    "Footscray",
    "Northcote",
    "Port Melbourne",
    "Prahran",
    "Richmond",
    "South Melbourne",
    "South Yarra",
    "Southbank",
    "St Kilda",
    "Windsor",
    "Yarraville/Seddon"
  ]

  validates :name, presence: true, uniqueness: true
  validates :address, :description, :photo, presence: true
  validates :district, presence: true, inclusion: { in: DISTRICTS }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end






