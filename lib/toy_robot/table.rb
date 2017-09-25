module ToyRobot
  class Table

    def initialize(length = 5, width = 5)
      @length = length
      @width = width
    end

    def valid_position?(position_x,position_y)
      position_x >= 0 && position_y >= 0 &&
      position_x < @length && position_y < @width
    end

  end
end
