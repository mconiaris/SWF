require_relative 'wrestler'
require 'pry'
require 'csv'

def weight_class(cell)
  if cell[5].to_i < 215
    "Lightweight"
  elsif cell[5].to_i < 230
    "Cruiserweight"
  elsif cell[5].to_i < 300
    "Heavyweight"
  elsif cell[5].to_i > 300
    "Super Heavyweight"
  else
    "Heavyweight"

  end
  # binding.pry
end

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
      weight_class:   weight_class(cell),
      city:           cell[7],
      state:          cell[8],
      country:        cell[9],
      region:         cell[10],
      wins:           cell[11],
      losses:         cell[12],
      draws:          cell[13],
      difference:     cell[14],
      matches:        cell[15],
      remaining:      cell[16],
      status:         cell[17],
      aliases:        cell[18],
    )
    @wrestler_objects_array.push(@wrestler)
  end
end


@wrestlers_csv_array = CSV.read("resources/wrestler_list.csv")
turn_array_into_objects(@wrestlers_csv_array)
binding.pry
puts "Testing"
