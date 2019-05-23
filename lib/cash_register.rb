class CashRegister
  attr_accessor :total, :discount, :price, :quantity, :title

  def initialize(total = 0)
    @total = total
    @discount = discount
    @discount = 20
  end

  def add_item(title = "title", price = 0.0, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @total += @price * @quantity
  end

  def apply_discount



  end

end
