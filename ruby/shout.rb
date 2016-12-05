
#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#  	words + "!!!" + " :)"
#  end
#end

#Shout.yell_angrily("NOOOO")
#Shout.yell_happily("YESSSS")


module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(words)
  	puts words + "!!!" + " :)"
  end
end

class Student
	include Shout
end

class Poker_Player
	include Shout
end

Jess = Student.new
Jess.yell_happily("FINALLY DONE")
Jess.yell_angrily("WAIT THERE'S MORE")

Jon = Poker_Player.new
Jon.yell_angrily("EVERY DANG TIME")
Jon.yell_happily("BETTER LUCK NEXT TIME SUCKERS")