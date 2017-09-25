module ToyRobot
  class Command

    def self.process(command)
      if match = /\APLACE (?<x>\d),(?<y>\d),(?<direction>\w+)/.match(command)
      [:place, match[:x].to_i, match[:y].to_i, match[:direction]]
      elsif /\AMOVE$/ =~ command
        [:move]
      elsif /\ALEFT$/ =~ command
        [:left]
      elsif /\ARIGHT$/ =~ command
        [:right]
      elsif /\AREPORT$/ =~ command
        [:report]
      else
        [:not_valid, command]
      end
    end

  end
end
