class CashRegister
  attr_accessor :total, :discount, :price, :quantity, :title

  # @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price = 0.0, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
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
    @items
  end

  def void_last_transaction
    @total 
  end

end
