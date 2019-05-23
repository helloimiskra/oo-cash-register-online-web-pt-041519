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
    @items << title
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
my_cash_reg = CashRegister.new
my_cash_reg.add_item
an_cash_reg = CashRegister.new