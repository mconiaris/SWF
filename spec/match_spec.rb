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
  end
end
