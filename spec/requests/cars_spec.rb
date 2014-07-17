require 'spec_helper'

describe "Cars" do
  describe "Search cars" do
    before { visit cars_path }


    describe "search for the BMW", :js => true do
      it "return 6 images" do
        fill_in 'car_registration', with: 'DK05XCR'
        fill_in 'car_stock_ref', with: 'ARNCM-U-515377'
        click_button 'Find images'
      end
    end


  end
end
