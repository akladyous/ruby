describe "predicate matchers" do

  it "will match be_*" do
    expect([]).to be_empty
    expect(1).to be_integer
    expect(0).to be_zero
    expect(1).to be_nonzero
    expect(2).to be_even
  end

  it "hav_key based on Hash.has_key?" do
    d1 = {a: 1}
    expect(d1).to have_key(:a)
    expect(d1).to have_value(1)
  end

  it "will match be_* to custom methods ending in ?" do
    class Product
      def avaliable?; true; end
      def has_pending_order?; true; end
    end
    product = Product.new
    expect(product).to be_avaliable
    # or
    expect(product.avaliable?).to be_truthy
    # or
    expect(product).to have_pending_order
  end
end
