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

  context "get LEFT" do
    it "can manage LEFT command" do
      command, *args = ToyRobot::Command.process("LEFT")
      expect(command).to eq(:turn_left)
      expect(args).to be_empty
    end

    it "can NOT manage LEFT command with spaces" do
      command = ToyRobot::Command.process("LEFT   ")
      expect(command).to eq([:not_valid, "LEFT   "])
    end
  end

  context "get RIGHT" do
    it "can manage RIGHT command" do
      command, *args = ToyRobot::Command.process("RIGHT")
      expect(command).to eq(:turn_right)
      expect(args).to be_empty
    end

    it "can NOT manage RIGHT command with spaces" do
      command = ToyRobot::Command.process("RIGHT   ")
      expect(command).to eq([:not_valid, "RIGHT   "])
    end
  end

  context "get REPORT" do
    it "can manage REPORT command" do
      command, *args = ToyRobot::Command.process("REPORT")
      expect(command).to eq(:report)
      expect(args).to be_empty
    end

    it "can NOT manage REPORT command with spaces" do
      command = ToyRobot::Command.process("REPORT   ")
      expect(command).to eq([:not_valid, "REPORT   "])
    end
  end
end
