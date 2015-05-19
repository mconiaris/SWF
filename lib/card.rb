require 'date'

class Card

  attr_reader :date, :location, :card_name

  def initialize(args)
    @date               =  args[:date]
    @location           =  args[:location]
    @card_name          =  args[:card_name]
  end
end
