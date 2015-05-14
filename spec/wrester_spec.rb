require 'wrestler'
require 'pry'

RSpec.describe 'Wrestler', :wrestler do
  before(:context) do
    @wrestler = Wrestler.new({
      first:          'John',
      last:           'Cena',
      priority:       '5',
      tag_priority:   '2',
      height:         "6' 1\"",
      weight:         "251",
      #, :class, :city, :state, :country,

    })
    # :region, :wins, :losses, :draws, :difference,
    # :matches, :remaining, :status, :aliases

  end
  describe '#initialize' do
    it "first returns 'John'" do
      expect(@wrestler.first).to eq('John')
    end
    it "last returns 'Cena'" do
      expect(@wrestler.last).to eq('Cena')
    end
    it "priority returns '5'" do
      expect(@wrestler.priority).to eq(5)
    end
    it "priority returns a Fixnum" do
      expect(@wrestler.priority.class).to eq(Fixnum)
    end
    it "tag_priority returns '2'" do
      expect(@wrestler.tag_priority).to eq(2)
    end
    it "tag priority returns a Fixnum" do
      expect(@wrestler.tag_priority.class).to eq(Fixnum)
    end
    # TODO: Fix test to respond to correct input
    it "height returns 6' 1\"" do
      expect(@wrestler.height).to eq("6' 1")
    end
    it "weight returns 251" do
      expect(@wrestler.weight).to eq(251)
    end
  end
end
