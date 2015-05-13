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
    end
  end

end
