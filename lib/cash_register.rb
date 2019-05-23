class CashRegister
  attr_accessor :total, :discount, :price, :quantity, :title

  @@items = []

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
    @@items << @title
  end

  def apply_discount
    if @discount > 0
      discount_percentage = @discount * 0.01
      @total = @total - (@total.to_f * discount_percentage)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items
  end

end
