# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError => e 
    puts e.message
    print "try again with a Integer value"
  end
    
end

# PHASE 3
class NotAFruit < RuntimeError
  
  def initialize(msg = "put a fruit, you fruit!")
    super
  end
end

class CoffeeFirst < RuntimeError
  
  def initialize(msg = "coffee is good. Need fruit now!")
    super
  end
end





FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeFirst
  else 
    raise NotAFruit
  end 
end



def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  
  begin
    reaction(maybe_fruit) 
  rescue NotAFruit => e 
    puts e.message 
  rescue CoffeeFirst => e 
    puts e.message 
    maybe_fruit = gets.chomp
    retry 
  end
end  

# sam = BestFriend.new('', 1, '')
# 
# sam.talk_about_friendship
# sam.do_friendstuff
# sam.give_friendship_bracelet

class DontBroMe < RuntimeError
  def initialize(msg= "we must know each other 5 years")
  end
  
end


# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise "Don't bro me if you don't know me" if yrs_known < 5
    raise "Don't 
          
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


