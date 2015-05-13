class Wrestler

  attr_reader :first, :last, :priority, :tag_priority,
    :height, :weight, :class, :city, :state, :country,
    :region, :wins, :losses, :draws, :difference,
    :matches, :remaining, :status, :alias


  def initialize(args)
    @first          =  args[:first]
    @last           =  args[:last]
    @priority       =  args[:priority].to_i
    @tag_priority   =  args[:tag_priority].to_i
    @height         =  normalize_height(args[:height])
    @weight         =  args[:weight].to_i
    @weight_class   =  weight_class || "Heavyweight"
    @city           =  args[:city]
    @state          =  args[:state]
    @country        =  args[:country]
    @region         =  args[:region]
    @wins           =  args[:wins].to_i
    @losses         =  args[:losses].to_i
    @draws          =  args[:draws].to_i
    @difference     =  difference
    @matches        =  matches
    @remaining      =  remaining
    @status         =  status
    @aliases        =  args[:aliases]
  end

  def normalize_height(arg)
    # binding.pry
    if arg != nil
      arg[arg.size-1] = ''
      return arg
    end
  end

  # Determines weight class of wrestler
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

  # Deterrmines how many more wins than
  # losses the wrestler has
  def difference
    @wins - @losses
  end

  # Determines the total number of matches
  # that the wrestler has
  def matches
    @wins + @losses + @draws
  end

  def remaining
    (@priority * 20) - @matches
  end

  def status
    if @remaining > 0
      "Active"
    else
      "Retired"
    end
  end
end
