module ToyRobot
  class Robot
    attr_reader :position_x, :position_y, :direction

    def initialize(position_x = 0, position_y = 0, direction = "EAST")
      @position_x = position_x
      @position_y = position_y
      @direction = direction
    end

    def move_forward
      @position_x += 1
    end

    def move_backward
      @position_x -= 1
    end

    def move_up
      @position_y += 1
    end

    def move_down
      @position_y -= 1
    end

    def move
      case @direction
      when "NORTH" then move_up
      when "SOUTH" then move_down
      when "EAST" then move_forward
      when "WEST" then move_backward
      end
    end

    def turn_left
      case @direction
      when "NORTH" then @direction = "WEST"
      when "SOUTH" then @direction = "EAST"
      when "EAST" then @direction = "NORTH"
      when "WEST" then @direction = "SOUTH"
      end
    end

    def turn_right
      case @direction
      when "NORTH" then @direction = "EAST"
      when "SOUTH" then @direction = "WEST"
      when "EAST" then @direction = "SOUTH"
      when "WEST" then @direction = "NORTH"
      end
    end

    def report
      {
        position_x: @position_x,
        position_y: @position_y,
        direction: @direction
      }
    end

    def next_move
      case @direction
      when "NORTH"
      [@position_x, @position_y + 1]
      when "SOUTH"
      [@position_x, @position_y - 1]
      when "EAST"
      [@position_x + 1, @position_y]
      when "WEST"
      [@position_x - 1, @position_y]
      end

    end

  end
end
