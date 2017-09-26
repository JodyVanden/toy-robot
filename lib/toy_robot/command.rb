module ToyRobot
  class Command
    def self.process(command)
      if match = /\APLACE (?<x>\d),(?<y>\d),(?<direction>\w+)/.match(command)
        [:place, match[:x].to_i, match[:y].to_i, match[:direction]]
      elsif /\AMOVE$/ =~ command
        [:move]
      elsif /\ALEFT$/ =~ command
        [:turn_left]
      elsif /\ARIGHT$/ =~ command
        [:turn_right]
      elsif /\AREPORT$/ =~ command
        [:report]
      else
        [:not_valid, command]
      end
    end
  end
end
