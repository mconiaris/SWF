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
      it "cell 150's cell 3 returns '2'" do
        expect(@wrestlers_csv_array[150][3]).to eq('2')
      end
      it "cell 200's cell 4 returns 'nil'" do
        expect(@wrestlers_csv_array[200][4]).to eq(nil)
      end
      it "cell 250's cell 5 returns '3'" do
        expect(@wrestlers_csv_array[250][5]).to eq("228")
      end
      it "cell 300's cell 6 returns 'Heavyweight'" do
        expect(@wrestlers_csv_array[300][6]).to eq("Heavyweight")
      end
      it "cell 350's cell 7 returns 'nil'" do
        expect(@wrestlers_csv_array[350][7]).to eq(nil)
      end
      it "cell 400's cell 8 returns 'nil'" do
        expect(@wrestlers_csv_array[400][8]).to eq(nil)
      end
      it "cell 450's cell 9 returns 'Japan'" do
        expect(@wrestlers_csv_array[450][9]).to eq('Japan')
      end
      it "cell 500's cell 10 returns 'Southeast'" do
        expect(@wrestlers_csv_array[500][10]).to eq('Southeast')
      end
      it "cell 550's cell 11 returns '20'" do
        expect(@wrestlers_csv_array[550][11]).to eq('20')
      end
      it "cell 600's cell 12 returns '7'" do
        expect(@wrestlers_csv_array[600][12]).to eq('7')
      end
    end
  end

end
