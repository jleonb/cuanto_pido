require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post :create, service: { final_price: @service.final_price, hours: @service.hours, hours_price: @service.hours_price, img: @service.img, margin: @service.margin, name: @service.name, pri10: @service.pri10, pri1: @service.pri1, pri2: @service.pri2, pri3: @service.pri3, pri4: @service.pri4, pri5: @service.pri5, pri6: @service.pri6, pri7: @service.pri7, pri8: @service.pri8, pri9: @service.pri9, sup10: @service.sup10, sup1: @service.sup1, sup2: @service.sup2, sup3: @service.sup3, sup4: @service.sup4, sup5: @service.sup5, sup6: @service.sup6, sup7: @service.sup7, sup8: @service.sup8, sup9: @service.sup9, total_sup: @service.total_sup }
    end

    assert_redirected_to service_path(assigns(:service))
  end

  test "should show service" do
    get :show, id: @service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service
    assert_response :success
  end

  test "should update service" do
    patch :update, id: @service, service: { final_price: @service.final_price, hours: @service.hours, hours_price: @service.hours_price, img: @service.img, margin: @service.margin, name: @service.name, pri10: @service.pri10, pri1: @service.pri1, pri2: @service.pri2, pri3: @service.pri3, pri4: @service.pri4, pri5: @service.pri5, pri6: @service.pri6, pri7: @service.pri7, pri8: @service.pri8, pri9: @service.pri9, sup10: @service.sup10, sup1: @service.sup1, sup2: @service.sup2, sup3: @service.sup3, sup4: @service.sup4, sup5: @service.sup5, sup6: @service.sup6, sup7: @service.sup7, sup8: @service.sup8, sup9: @service.sup9, total_sup: @service.total_sup }
    assert_redirected_to service_path(assigns(:service))
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete :destroy, id: @service
    end

    assert_redirected_to services_path
  end
end
