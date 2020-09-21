class Artist < ApplicationRecord
  has_and_belongs_to_many :instruments

  validates :name, presence:true
  validates :title, uniqueness:true

  def instrument_ids=(ids)
    ids.each do |id|
      instrument = Instrument.find(id) if id != ""
      if self.instruments.include?(instrument)
      else
        self.instruments << instrument if instrument
      end
    end
  end
end
