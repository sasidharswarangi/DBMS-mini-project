class Insurance < ApplicationRecord
  belongs_to :company

  def ship
    Ship.first
  end
end
