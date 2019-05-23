class CashRegister
  attr_accessor :total, :discount, :price, :quantity, :title

  def initialize(discount = 0)
    @total = total
    @total = 0
    @discount = discount

  end

  def add_item(title = "title", price = 0.0, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @total += @price * @quantity
  end

  def apply_discount
    discount_percentage = @discount * 0.01
    @total = @total - (@total.to_f * discount_percentage)
    print "After the discount, the tota comes to $#{@total.to_i}."

  end

end
