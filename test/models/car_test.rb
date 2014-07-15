require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test "correct reference and images" do
    car = Car.new stock_ref: 'ARNFH-U-5728', registration: 'SO06DNV'
    assert_equal car.obfuscated_stock_reference, 'AVRNNDF6H0-OUS2'

    assert_equal car.images_list,
                %w[
                    http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/i/
                    http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/6/
                    http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/f/
                    http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/4/
                    http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/5/
                    http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/r/
                ].sort
  end
end