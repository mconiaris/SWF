class Match

  attr_reader :match_type, :wrestler_1, :wrestler_2,
    :winner, :outcome, :time

  def initialize(args)
    @match_type         =  args[:match_type]
    @wrestler_1         =  args[:wrestler_1]
    @wrestler_2         =  args[:wrestler_2]
    @winner             =  args[:winner]
    @outcome            =  args[:outcome]
    @time               =  args[:time]
  end
end
