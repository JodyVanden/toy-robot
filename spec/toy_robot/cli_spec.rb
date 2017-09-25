require "spec_helper"

describe ToyRobot::CLI do
  subject {ToyRobot::CLI.new}

  context "loading command" do
    it "load the commands from a file" do
      path = File.dirname(__FILE__) + "/../../commands.txt"
      commands = subject.load_commands(path)
      expect(commands).to eq([
        [:place,2,3,"NORTH"],
        [:right],
        [:move],
        [:report]
        ])
    end
  end

  context "run" do
    let(:simulation_robot_place) { instance_double(ToyRobot::SimulationRobotPlace) }

    before do
      allow(subject).to receive(:simulation_robot_place){ simulation_robot_place }
    end


    context "PLACE command" do
      it "passes a command PLACE to the simulation robot place" do
        expect(simulation_robot_place).to receive(:place).with(1,2,"NORTH")
        subject.run([[:place, 1, 2, "NORTH"]])
      end
    end
  end
end
