require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { bc1: @product.bc1, bc2: @product.bc2, brand: @product.brand, category: @product.category, description: @product.description, img: @product.img, model: @product.model, name: @product.name, price: @product.price, sn1: @product.sn1, sn2: @product.sn2 }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { bc1: @product.bc1, bc2: @product.bc2, brand: @product.brand, category: @product.category, description: @product.description, img: @product.img, model: @product.model, name: @product.name, price: @product.price, sn1: @product.sn1, sn2: @product.sn2 }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
