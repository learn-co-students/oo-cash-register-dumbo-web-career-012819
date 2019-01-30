require 'pry'
require 'rb-readline'

class CashRegister
  attr_accessor :total, :discount, :list_items, :last_item

  def initialize(emp_discount=nil)
    @total = 0
    @discount = emp_discount
    @list_items = []
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    quantity.times do
      list_items << title
    end
    @last_item = (price / quantity)
  end

  def apply_discount
    if self.discount
      self.total -= self.total * (self.discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.list_items
  end

  def void_last_transaction
    list_items.pop
    self.total -= self.last_item
  end

end
