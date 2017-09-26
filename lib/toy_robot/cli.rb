module ToyRobot
  class CLI

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

    def simulation_robot_place


    end

  end
end
