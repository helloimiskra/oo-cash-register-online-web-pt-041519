class CashRegister
  attr_accessor :total, :discount, :price, :quantity, :title, :last_transaction

  # @@items = []

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(title, price = 0.0, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction = price * quantity
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
    @total = @total - @last_transaction
    @total
  end

end
