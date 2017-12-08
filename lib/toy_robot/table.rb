module ToyRobot
  class Table

    def initialize(length = 5, width = 5, objects = [])
      @length = length
      @width = width
      @objects = objects
    end

    def valid_position?(position_x, position_y)
      position_x >= 0 && position_y >= 0 &&
      position_x < @length && position_y < @width
    end

    def position_object(object)
      @objects << object
    end

    def object?(next_move)
      @objects.include?(next_move)
    end
  end
end
