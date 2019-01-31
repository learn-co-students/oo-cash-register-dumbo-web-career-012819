require 'pry'
class CashRegister
    attr_accessor :discount, :total, :amount

    def initialize(discount=nil)
        @total= 0
        @discount=discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title,price,amount= 1)
        @title = title
        @amount=amount
        @total+=(price*amount)
        @amount.times do @items << @title
        end
        #binding.pry
    end

    def apply_discount
        if @discount
        @total -= (@total*@discount/100)
        return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end

    end

    def items
        @items
    end

    def void_last_transaction
        @total=0
    end
end


socks = CashRegister.new(20)
 #binding.pry
 0
