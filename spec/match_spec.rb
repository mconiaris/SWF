require 'pry'
require 'date'


RSpec.describe 'Match', :match do
  before(:context) do
    @wrestler_1 = Wrestler.new({
      first:          'John',
      last:           'Cena',
      priority:       '5',
      tag_priority:   '2',
      height:         "6' 1\"",
      weight:         "251",
      city:           "West Newbury",
      state:          "MA",
      country:        "United States",
      region:         "Northeast",
      wins:           "3",
      losses:         "2",
      draws:          "1",
      aliases:        "The Prototype"
      })
    @wrestler_2 = Wrestler.new({
      first:          'Alexander',
      last:           'Rusev',
      priority:       '4',
      tag_priority:   '2',
      height:         "6' 0\"",
      weight:         "304",
      city:           "Plovdiv",
      country:        "Bulgaria",
      region:         "Northeast",
      wins:           "5",
      losses:         "4",
      draws:          "3",
      aliases:        "Miroslav Makarov"
      })
    @match = Match.new({
      match_type:     'single',
      wrestler_1:     @wrestler_1,
      wrestler_2:     @wrestler_2,
      winner:         'John Cena',
      outcome:        'submission',
      time:           '12:52',
      date:           Date.new(2015,5,18),
      location:       'New York'
    })
  end
  describe 'after #initialize' do
    it "returns a Match object" do
      expect(@match.class).to eq(Match)
    end
    it "match_type is 'single'" do
      expect(@match.match_type).to eq('single')
    end
    it "'{@match.wrestler_1.first} {@match.wrestler_1.last}' returns 'John Cena'" do
      expect("#{@match.wrestler_1.first} #{@match.wrestler_1.last}").to eq('John Cena')
    end
    it "wrestler_2 returns 'Rusev'" do
      expect(@match.wrestler_2.last).to eq('Rusev')
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
    it "date to string equals 2015-05-18" do
      expect(@match.date.to_s).to eq('2015-05-18')
    end
    it "location equals 'New York'" do
      expect(@match.location).to eq('New York')
    end
  end
  #TODO: create tests for date, location, card name
end
