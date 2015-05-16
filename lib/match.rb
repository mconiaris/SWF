class Match

  attr_reader :wrestler_1, :wrestler_2, :winner,
    :outcome, :time

  def initialize(args)
    @wrestler_1         =  args[:wrestler_1],
    @wrestler_2         =  args[:wrestler_2],
    @winner             =  args[:winner],
    @outcome            =  args[:outcome],
    @time               =  args[:time],
  end
end
