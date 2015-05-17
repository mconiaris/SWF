require 'pry'


RSpec.describe 'Arena', :arena do
  before(:context) do
    @arena = Arena.new({
      arena_name:     'Madison Square Garden',
      arena_city:     'New York',
      arena_sate:     'NY',
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
  end
end
