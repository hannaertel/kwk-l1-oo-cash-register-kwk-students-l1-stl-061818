class Beginning
  def initialize(low_item, middle_item, high_item)
        @low_item = low_item 
        @middle_item = middle_item 
        @high_item = high_item 
       
    end 
    
    
    
    def high_item
      @high_item
    end
      
    def low_item
      @low_item
    end 
      
    def middle_item
       @middle_item
    end 
  
    
​
end 
​
class Amazon
    
    #make array insid array for each one
    @@options = []
    
    def self.add_choice(choice)
      @@options << choice
    end
    
    
    
    def self.quiz_choice(choice)
      puts "Welcome to Amazon! What is your price range?"
      puts "$10 and under, $10-50, or $50+?"
      answer = gets.chomp
      
       
      
      if answer == "$10 and under"
        puts "Great! "
        puts "Would you like #{choice.low_item}??"
        answer = gets.chomp.downcase 
      
        if answer == "yes"
          puts "#{choice.low_item} has been added to your cart."
        else
          "#{choice.low_item} has not been added to your cart"
      end
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
    end
    
    def self.start_quiz
      @@options.each do |choice|
            self.quiz_choice(choice)
        end 
        
    puts "Nice purchases!"
  end
end
​
Amazon.add_choice(Beginning.new("Mattel Games UNO Card Game", "Impecca Eco-Friendly iPhone 6s Case", "2017 Model Apple iPad 9.7-inch"))
​
Amazon.add_choice(Beginning.new("Caetle Beauty Blender", "Fenty Beauty By Rihanna Gloss Bomb", "La Mer The Moisturizing Soft Cream"))
Amazon.add_choice(Beginning.new("Revlon Detangle Hair Brush", "Earbuds ONCON Ear Headphones", "Guerlain Orchid"))


Amazon.start_quiz
