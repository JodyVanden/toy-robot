require "spec_helper"

describe ToyRobot::CLI do
  subject {ToyRobot::CLI.new}

  # context "loading command" do
  #   it "load the commands from a file" do
  #     path = File.dirname(__FILE__) + "/../../commands.txt"
  #     commands = subject.load_commands(path)
  #     expect(commands).to eq([
  #       [:place,2,3,"NORTH"],
  #       [:turn_right],
  #       [:move],
  #       [:report]
  #       ])
  #   end
  # end

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

    context "MOVE command" do
      it "passes a command MOVE to the simulation robot place" do
        expect(simulation_robot_place).to receive(:move)
        subject.run([:move])
      end
    end

    context "LEFT command" do
      it "passes a command LEFT to the simulation robot place" do
        expect(simulation_robot_place).to receive(:turn_left)
        subject.run([:turn_left])
      end
    end

    context "RIGHT command" do
      it "passes a command RIGHT to the simulation robot place" do
        expect(simulation_robot_place).to receive(:turn_right)
        subject.run([:turn_right])
      end
    end

    context "REPORT command" do
      it "passes a command REPORT to the simulation robot place" do
        expect(simulation_robot_place).to receive(:report)
        subject.run([:report])
      end
    end
  end
end
