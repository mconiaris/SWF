require 'app'
require 'pry'
require_relative "../lib/app"

RSpec.describe 'App', :app do
  describe '#turn_array_into_objects' do
    before(:context) do
      @wrestlers_csv_array = CSV.read("resources/wrestler_list.csv")
      @wrestler_list = turn_array_into_objects(@wrestlers_csv_array)
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
      it "cell 650's cell 13 returns '1'" do
        expect(@wrestlers_csv_array[650][13]).to eq('1')
      end
      it "cell 700's cell 14 returns '-19'" do
        expect(@wrestlers_csv_array[700][14]).to eq('-19')
      end
      it "cell 750's cell 15 returns '20'" do
        expect(@wrestlers_csv_array[750][15]).to eq('20')
      end
      it "cell 775's cell 16 returns '0'" do
        expect(@wrestlers_csv_array[775][16]).to eq('0')
      end
      it "cell 785's cell 17 returns 'Retired'" do
        expect(@wrestlers_csv_array[785][17]).to eq('Retired')
      end
      it "cell 797's cell 18 returns 'nil'" do
        expect(@wrestlers_csv_array[797][18]).to eq(nil)
      end
    end
    context '#turn_array_into_objects', :wrestler_list do
      describe '@wrestler_objects_array' do
        it 'returns a size of 798' do
          expect(@wrestler_objects_array.size).to eq(798)
        end
        it "cell 25's first variable returns 'Dave'" do
          expect(@wrestler_objects_array[25].first).to eq('Dave')
        end
        it "cell 75's last variable returns 'Frederico'" do
          expect(@wrestler_objects_array[75].last).to eq('Frederico')
        end
        it "cell 125's priority variable returns '1'" do
          expect(@wrestler_objects_array[125].priority).to eq(1)
        end
        it "cell 175's height variable returns 'nil'" do
          expect(@wrestler_objects_array[175].height).to eq(nil)
        end
        it "cell 225's weight variable returns '235'" do
          expect(@wrestler_objects_array[225].weight).to eq(235)
        end
        it "cell 275's weight_class variable returns 'Heavyweight'" do
          expect(@wrestler_objects_array[275].weight_class).to eq('Heavyweight')
        end
        it "cell 325's city variable returns 'Houston'" do
          expect(@wrestler_objects_array[325].city).to eq('Houston')
        end
        it "cell 375's state variable returns 'nil'" do
          expect(@wrestler_objects_array[375].state).to eq(nil)
        end
        it "cell 425's country variable returns 'Singapore'" do
          expect(@wrestler_objects_array[425].country).to eq('Singapore')
        end
        it "cell 475's region variable returns 'Southeast'" do
          expect(@wrestler_objects_array[475].region).to eq('Southeast')
        end
        it "cell 525's wins variable returns '9'" do
          expect(@wrestler_objects_array[525].wins).to eq(9)
        end
        it "cell 575's losses variable returns '25'" do
          expect(@wrestler_objects_array[575].losses).to eq(25)
        end
      #@losses=0, @draws=0, @difference=0, @matches=0, @remaining=60, @status="Active", @aliases=nil>
        # binding.pry
      end
    end
  end

end
