require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_nil assigns(:car)
  end

  test 'should get list of pictures' do
    get :index, { car: { registration: 'DK05XCR', stock_ref: 'ARNCM-U-515377' } }
    assert_response :success
    assert_not_nil assigns(:car)
  end
end
