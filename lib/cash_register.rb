class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
   self.total += amount * quantity
   quantity.times do
     items << title
   end
   self.last_transaction = amount * quantity
 end

 def apply_discount
   # binding.prylearn

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
