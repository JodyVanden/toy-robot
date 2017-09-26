module ToyRobot
  class CLI
    attr_reader :simulation_robot_place

    def initialize
    table = ToyRobot::Table.new(5, 5)
    @simulation_robot_place = ToyRobot::SimulationRobotPlace.new(table)
    end

    def load_commands(commands_file)
      File.readlines(commands_file).map do |command|
      ToyRobot::Command.process(command)
      end
    end

    def run(commands)
      commands.each do |command, *args|
        simulation_robot_place.send(command, *args)
      end
    end


  end
end
