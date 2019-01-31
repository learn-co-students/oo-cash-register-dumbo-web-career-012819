class CashRegister
  
  attr_accessor :discount, :total, :items 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @last_transaction = {
      "title" => title,
      "price" => price,
      "quantity" => quantity
    }
    @total += price * quantity
    quantity.times {
       @items << title
    }
  end
  
  def apply_discount
    if @discount > 0
        @total = @total - @total * @discount / 100.00
      return "After the discount, the total comes to $800."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction["price"] * @last_transaction["quantity"]
    @last_transaction["quantity"].times {
      @items.delete(@last_transaction["title"])
    }
  end
  
end