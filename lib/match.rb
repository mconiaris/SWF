require 'date'

class Match

  attr_reader :match_type, :wrestler_1, :wrestler_2,
    :winner, :outcome, :time, :date, :location,
    :card_name,

  def initialize(args)
    @match_type         =  args[:match_type]
    @wrestler_1         =  args[:wrestler_1]
    @wrestler_2         =  args[:wrestler_2]
    @winner             =  args[:winner]
    @outcome            =  args[:outcome]
    @time               =  args[:time]
    @date               =  args[:date]
    @location           =  args[:location]
    @card_name          =  args[:card_name]
  end
end
