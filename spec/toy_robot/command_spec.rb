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

  context "get MOVE" do
    it "can manage MOVE command" do
      command, *args = ToyRobot::Command.process("MOVE")
      expect(command).to eq(:move)
      expect(args).to be_empty
    end

    it "can NOT manage MOVE command with spaces" do
      command = ToyRobot::Command.process("MOVE   ")
      expect(command).to eq([:not_valid, "MOVE   "])
    end
  end
end
