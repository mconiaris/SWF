class Arena

  attr_reader :arena_name, :arena_city, :arena_sate,
    :arena_country

  def initialize(args)
    @arena_name         =  args[:arena_name]
    @arena_city         =  args[:arena_city]
    @arena_sate         =  args[:arena_sate]
    @arena_country      =  args[:arena_country]
  end
end
