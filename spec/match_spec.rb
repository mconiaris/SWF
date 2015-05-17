require 'pry'
require 'date'


RSpec.describe 'Match', :match do
  before(:context) do
    @match = Match.new({
      match_type:     'single',
      wrestler_1:     'John Cena',
      wrestler_2:     'Rusev',
      winner:         'John Cena',
      outcome:        'submission',
      time:           '12:52',
      date:           Date.new(2015,5,18),
    })
  end
  describe '#initialize' do
    it "returns a Match object" do
      expect(@match.class).to eq(Match)
    end
    it "match_type is 'single'" do
      expect(@match.match_type).to eq('single')
    end
    it "wrestler_1 returns 'John Cena'" do
      expect(@match.wrestler_1).to eq('John Cena')
    end
    it "wrestler_2 returns 'Rusev'" do
      expect(@match.wrestler_2).to eq('Rusev')
    end
    it "winner returns 'John Cena'" do
      expect(@match.winner).to eq('John Cena')
    end
    it "outcome returns 'submission'" do
      expect(@match.outcome).to eq('submission')
    end
    it "time returns '12:52'" do
      expect(@match.time).to eq('12:52')
    end
    it "returns a date object" do
      expect(@match.date.class).to eq(Date)
    end
    it "date equals 2015-05-18" do
      expect(@match.date.to_s).to eq('2015-05-18')
    end
  end
  #TODO: create tests for date, location, card name
end
