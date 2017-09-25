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

end
