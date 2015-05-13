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
    @weight         =  args[:weight]
    @weight_class   =  args[:weight_class]
    @city           =  args[:city]
    @state          =  args[:state]
    @country        =  args[:country]
    @region         =  args[:region]
    @wins           =  args[:wins]
    @losses         =  args[:losses]
    @draws          =  args[:draws]
    @difference     =  args[:difference]
    @matches        =  args[:matches]
    @remaining      =  args[:remaining]
    @status         =  args[:status]
    @aliases        =  args[:aliases]
  end
end
