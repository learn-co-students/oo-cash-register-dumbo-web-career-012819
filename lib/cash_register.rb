class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  # attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    # @last_transaction = nil
  end

  def add_item(title, price, quantity = 1)
    self.last_transaction = price

    quantity.times {self.items << title}
    self.total += price * quantity
  end

  def apply_discount
    if self.discount <= 0
      return "There is no discount to apply."
    else
      percentage = self.discount * 0.01
      self.total -= (self.total * percentage).to_i
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end

# cash_register = CashRegister.new(20)
# cash_register.add_item("tomato", 1.76)
# puts cash_register.apply_discount
# puts cash_register.void_last_transaction
