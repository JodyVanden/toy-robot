module ToyRobot
  class SimulationRobotPlace
    attr_reader :place, :robot

    def initialize(table)
      @table = table
    end

    def place(position_x,position_y,direction)
      if @table.valid_position?(position_x,position_y)
      @robot = Robot.new(position_x, position_y, direction)
      end
    end

  end
end
