require 'rails_helper'

describe Cart do
  context 'methods' do
    context '#add_product' do
      it 'adds a product to product_list' do
        cart = Cart.new({'8' => 2, '6' => 4})
        cart.add_product(8)
        cart.add_product(6)

        expect(cart.product_list).to eq({'8' => 1, '6' => 1})
      end
    end
    context '#total_product_count' do
      it 'returns the total number of products' do
        cart = Cart.new({'8' => 2, '6' => 4})

        expect(cart.total_product_count).to eq(2)
      end
    end
    context '#total_price' do
      it 'returns the total price of the cart' do
        product_1 = create(:product)
        cart = Cart.new(nil)
        cart.add_product(product_1.id)

        expect(cart.total_price).to eq((product_1.price * 1))
      end
    end
  end
end
