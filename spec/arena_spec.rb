require 'pry'


RSpec.describe 'Arena', :arena do
  before(:context) do
    @arena = Arena.new({
      arena_name:     'Madison Square Garden',
      arena_city:     'New York',
      arena_state:    'NY',
      arena_country:  'United States',
    })
  end
  describe '#initialize' do
    it "returns a Arena object" do
      expect(@arena.class).to eq(Arena)
    end
    it "arena name is 'Madison Square Garden'" do
      expect(@arena.arena_name).to eq('Madison Square Garden')
    end
    it "arena_city is 'New York'" do
      expect(@arena.arena_city).to eq('New York')
    end
    it "arena_state is 'NY'" do
      expect(@arena.arena_state).to eq('NY')
    end
    it "arena_country is 'United States'" do
      expect(@arena.arena_country).to eq('United States')
    end
  end
end
