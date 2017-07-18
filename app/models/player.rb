class Player < ActiveRecord::Base
  belongs_to :team
  has_many :sponsorships
  has_many :sponsors, through: :sponsorships
end
