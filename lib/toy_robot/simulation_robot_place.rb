module ToyRobot
  class SimulationRobotPlace
    attr_reader :robot

    def initialize(table)
      @table = table
    end

    def place(position_x, position_y, direction)
      if @table.valid_position?(position_x, position_y)
        @robot = Robot.new(position_x, position_y, direction)
      end
    end

    def move
      return unless robot_placed?
      if @table.valid_position?(*robot.next_move)
        robot.move
      end
    end

    def turn_left
      return unless robot_placed?
      robot.turn_left
    end

    def turn_right
      return unless robot_placed?
      robot.turn_right
    end

    def report
      return unless robot_placed?
      position = robot.report
      puts "Robot is at (#{position[:position_x]}, #{position[:position_y]})" \
           " and it's direction is #{position[:direction]}"
    end

    def robot_placed?
      !robot.nil?
    end

    def not_valid(command)
      puts "'#{command.strip}' is a not valid command"
    end

  end
end
