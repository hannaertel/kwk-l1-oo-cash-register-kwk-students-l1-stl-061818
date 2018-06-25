class Beginning 
  def initialize(item, price)
  @item = item
  @price = price
end

def item
  @item
end

def price
  @price
end
end

class Amazon
  
  @@options = [ ]
    
    def self.add_choice(choice)
      @@options << choice
    end
    
    def self.quiz_choice(choice)
      
      prices = [4.00, 7.35, 9.99, 15.17, 29.00, 45.65,58.65, 135.98, 400.44]
      small_price = []
      middle_price = []
      big_price = []
      prices.each do |cost|
        if cost <= 10 
          small_price << price
        elsif cost >= 10 && cost <= 50 
          middle_price << price
        else
          big_price << price
        end
      end
      
      puts "Welcome to Amazon! What is your price range?"
      puts "$10 and under, $10-50, or $50+?"
      answer = gets.chomp
      
      if answer == "$10 and under"
        puts "Great! "
        puts "Would you like #{choice.item} for #{small_price??"
        answer = gets.chomp.downcase 
      
        if answer == "yes"
          puts "#{choice.low_item} has been added to your cart."
        else
          "#{choice.low_item} has not been added to your cart"
      end
    
     
      if answer == "$10-50"
        puts "Great!"
        puts "Would you like #{choice.middle_item}?"
        answer = gets.chomp.downcase
        if answer == "yes"
          puts "#{choice.middle_item} has been added to your cart."
        else
          puts "#{choice.middle_item} has not been added to your cart"
        end
      end
      
      if answer == "$50+"
        puts "Great!"
        puts "Would you like #{choice.high_item}?"
        answer = gets.chomp.downcase
        if answer == "yes"
          puts "#{choice.high_item} has been added to your cart."
        else
          puts "#{choice.high_item} has not been added to your cart."
        end
      end
    