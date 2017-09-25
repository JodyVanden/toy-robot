module ToyRobot
  class Robot
    attr_reader :position_x, :position_y

    def initialize(position_x = 0, position_y = 0)
      @position_x = position_x
      @position_y = position_y
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

  end
end
