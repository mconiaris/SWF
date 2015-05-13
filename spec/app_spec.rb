require 'app'
require 'pry'
require_relative "../lib/app"

RSpec.describe 'App', :app do
  describe '#turn_array_into_objects' do
    before(:context) do
      @wrestlers_csv_array = CSV.read("resources/wrestler_list.csv")
      @stuff = turn_array_into_objects(@wrestlers_csv_array)
    end
    context "wrestlers_csv_array" do
      it "is an array" do
        expect(@wrestlers_csv_array.class).to eq(Array)
    # binding.pry
      end
      it "has a size of 798" do
        expect(@wrestlers_csv_array.size).to eq(798)
      end
      it "cell 0's size is 19" do
        expect(@wrestlers_csv_array[1].size).to eq(19)
      end
      it "cell 1's cell 0 returns 'Billy'" do
        expect(@wrestlers_csv_array[1][0]).to eq('Butcher')
      end
      it "cell 50's cell 1 returns 'Collins'" do
        expect(@wrestlers_csv_array[50][1]).to eq('Collins')
      end
      it "cell 100's cell 2 returns '1'" do
        expect(@wrestlers_csv_array[100][2]).to eq('1')
      end
    end
  end

end
