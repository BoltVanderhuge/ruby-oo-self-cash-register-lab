require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    
    def initialize (discount=0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title,price,amount=1)
        self.total += (amount * price)
        amount.times do
            self.items.push(title)
        end
        self.last_transaction = (amount * price)
    end

    def apply_discount
        if discount != 0
            self.total -= (total * (discount/ 100.00))
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    
    end 

    def void_last_transaction 
        self.total -= self.last_transaction
    end
    
    
# binding.pry
# 0
end