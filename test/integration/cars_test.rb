require 'test_helper'

class CarsTest < ActionDispatch::IntegrationTest

  test "Searching for the BMW it should return 6 images" do
    car_reg = 'DK05XCR'
    stock_ref = 'ARNCM-U-515377'

    visit cars_path

    page.has_title? 'Search Images - Arnold Clark '

    fill_in 'car_registration', with: car_reg
    fill_in 'car_stock_ref', with: stock_ref
    click_button 'Find images'
    page.assert_selector 'div#images a', count: 6

    page.has_title? "#{car_reg} - Search Images - Arnold Clark"

  end

  test "Searching for the Citroen should return 1 image" do
    visit cars_path
    fill_in 'car_registration', with: 'SP05LDV'
    fill_in 'car_stock_ref', with: 'ARNDJ-U-5079'
    click_button 'Find images'
    page.assert_selector 'div#images a', count: 1
  end


  test "Searching for the Ford shouldn't return images" do
    visit cars_path
    fill_in 'car_registration', with: 'SC63XKP'
    fill_in 'car_stock_ref', with: 'ARNCD-N-38460'
    click_button 'Find images'
    page.assert_no_selector 'div#images a'
    page.has_css? 'p#error_load_images', visible: true
  end


end
