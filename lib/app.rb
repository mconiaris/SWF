require_relative 'wrestler'
require 'csv'

def turn_array_into_objects(array)

  # Get array from CSV
  wrestlers_csv_array = array

  # Outgoing Wrestler Objects
  @wrestler_objects_array = Array.new

  wrestlers_csv_array.each do |cell|

    # Create Wrestler objects
    @wrestler = Wrestler.new(

      first:          cell[0],
      last:           cell[1],
      priority:       cell[2],
      tag_priority:   cell[3],
      height:         cell[4],
      weight:         cell[5],
      city:           cell[7],
      state:          cell[8],
      country:        cell[9],
      region:         cell[10],
      wins:           cell[11],
      losses:         cell[12],
      draws:          cell[13],
      aliases:        cell[18],
    )
  @wrestler_objects_array.push(@wrestler)
  end
end


@wrestlers_csv_array = CSV.read("resources/wrestler_list.csv")
turn_array_into_objects(@wrestlers_csv_array)
# binding.pry
puts "Testing"
