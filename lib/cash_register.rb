class CashRegister
  attr_accessor :total, :discount, :price, :quantity, :title

  def initialize(total = 0, discount = 0)
    self.total = total
    self.discount = discount
    
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
