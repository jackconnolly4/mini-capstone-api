require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200
    
    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end
  
  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "description", "inventory", "is_discounted?","tax","total", "supplier", "images"], data.keys
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { price: 1, name: "test product", description: "test description", supplier_id: Supplier.first.id }
      data = JSON.parse(response.body)
      assert_response 200
      refute_nil data["id"]
      assert_equal "test product", data["name"]
      assert_equal "1.0", data["price"]
      assert_equal "test description", data["description"]
    end
  end
  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal product.description, data["description"]
  end
  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json"
      assert_response 200
    end
  end

  test "is_discounted?" do
    product = Product.new(price: 11)
    assert_equal false, product.is_discounted?

    product = Product.new(price: 1)
    assert_equal true, product.is_discounted?
  end

  test "tax" do
    product = Product.new(price: 100)
    assert_in_delta 9, product.tax
  end

  test "total" do
    product = Product.new(price: 100)
    assert_in_delta 109, product.total
  end
end
