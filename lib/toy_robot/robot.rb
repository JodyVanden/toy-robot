module ToyRobot
  class Robot
    attr_reader :position

    def initialize(position = 0)
      @position = position
    end

    def move_forward
      @position += 1
    end

    def move_backward
      @position -= 1
    end

  end
end
