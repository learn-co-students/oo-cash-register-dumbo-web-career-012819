class CashRegister
  attr_accessor :total, :discount, :price, :items
  def initialize (discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item (title, price, quantity = 1)
    @price = price
    @total += price * quantity
    i = 0
    until i == quantity
      @items << title
      i += 1
    end
  end
  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      @total = @total - (@total.to_f * (@discount.to_f/100))
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    @total -= @price
  end
end
