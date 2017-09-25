require "spec_helper"

describe(ToyRobot::Command) do
  context "get PLACE" do

    it "can manage a PLACE command" do
      command, *args = ToyRobot::Command.process("PLACE 2,3,NORTH")
      expect(command).to eq(:place)
      expect(args).to eq([2,3,"NORTH"])
    end

    it "don't manage PLACE X, Y, F" do
      command = ToyRobot::Command.process("PLACE 2, 3, NORTH")
      expect(command).to eq([:not_valid, "PLACE 2, 3, NORTH"])
    end

  end

end
