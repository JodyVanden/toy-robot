module ToyRobot
  class Command

    def self.process(command)
      if match = /\APLACE (?<x>\d),(?<y>\d),(?<direction>\w+)/.match(command)
      [:place, match[:x].to_i, match[:y].to_i, match[:direction]]
      else
        [:not_valid, command]
      end
    end

  end
end
