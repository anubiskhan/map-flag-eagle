class Cart
  attr_reader :product_list
  def initialize(product_list)
    @product_list = product_list || Hash.new(0)
  end

  def add_product(product_id)
    product_list[product_id.to_s] = 1
    # if product_list.empty? || product_list[product_id.to_s].nil?
    #   product_list[product_id.to_s] = 1
    # else
    #   product_list[product_id.to_s] += 1
    # end
  end

  def total_product_count
    product_list.keys.count
  end

  def total_price
    product_list.map do |product_id, quantity|
      Product.find(product_id).price * quantity
    end.sum
  end
end
