require 'pry'
require 'date'

RSpec.describe 'Card', :card do
  before(:context) do
    @card_1 = Card.new({
      date:           Date.new(2015,5,18),
      location:       'New York',
      card_name:      'WWE on Tour',
    })
  end
  describe "after #initialize" do
    it "date to string equals 2015-05-18" do
      expect(@match.date.to_s).to eq('2015-05-18')
    end
    it "location equals 'New York'" do
      expect(@match.location).to eq('New York')
    end
    it "card_name is 'WWE on Tour'" do
      expect(@match.card_name).to eq('WWE on Tour')
    end
  end
end
