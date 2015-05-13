class Wrestler

  attr_reader :first, :last, :priority, :tag_priority,
    :height, :weight, :class, :city, :state, :country,
    :region, :wins, :losses, :draws, :difference,
    :matches, :remaining, :status, :alias


  def initialize(args)
    @first          =  args[:first]
    @last           =  args[:last]
    @priority       =  args[:priority]
    @tag_priority   =  args[:tag_priority]
    @height         =  args[:height]
    @weight         =  args[:weight].to_i
    @weight_class   =  weight_class || "Heavyweight"
    @city           =  args[:city]
    @state          =  args[:state]
    @country        =  args[:country]
    @region         =  args[:region]
    @wins           =  args[:wins].to_i
    @losses         =  args[:losses].to_i
    @draws          =  args[:draws].to_i
    @difference     =  args[:difference]
    @matches        =  args[:matches].to_i
    @remaining      =  args[:remaining].to_i
    @status         =  args[:status]
    @aliases        =  args[:aliases]
  end

  def weight_class
    if @weight < 215
      "Lightweight"
    elsif @weight < 230
      "Cruiserweight"
    elsif @weight < 300
      "Heavyweight"
    elsif @weight > 300
      "Super Heavyweight"
    else
      "Heavyweight"
    end
  end

  # def difference(wrestler)
  #   cell[11].to_i - cell[12].to_i
  # end

  # def matches(wrestler)
  #   binding.pry
  #   cell[11].to_i + cell[12].to_i + cell[13].to_i
  # end

  # def remaining(wrestler)
  #   binding.pry
  #   (cell[2].to_i * 20) - cell[15].to_i
  # end

  # def status(wrestler)
  #   binding.pry
  #   if cell[16].to_i > 0
  #     "Active"
  #   else
  #     "Retired"
  #   end
  # end
    # binding.pry
end
