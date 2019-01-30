require "pry"

class CashRegister
	attr_accessor :total
	attr_reader :discount, :quantity, :item, :price

	def initialize(discount = 0)
		@discount = discount
		@total = 0
		@all_items = []
	end
	def add_item(item, price, quantity = 0)
		@price = price
		if quantity == 0 || quantity == 1
			@total += price
			@all_items << item
		elsif quantity > 1
			@total += price * quantity
			until @all_items.length == quantity + 1
				@all_items << item
			end
		end
	end
	def apply_discount
		if discount > 0
			@total = @total - (@total * @discount/100)
			return "After the discount, the total comes to $#{@total}."
		elsif discount == 0
			return "There is no discount to apply."
		end
	end
	def items
		@all_items
	end
	def void_last_transaction
		@total = @total - self.price
	end
end

