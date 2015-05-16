require 'pry'


RSpec.describe 'Match', :match do
  before(:context) do
    @match = Match.new({
      match_type:     'single',
      wrestler_1:     'John Cena',
      wrestler_2:     'Rusev',
      winner:         'wrestler_1',
      outcome:        'submission',
      time:           '12:52',
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
  end
end
