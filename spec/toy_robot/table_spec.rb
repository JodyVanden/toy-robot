require "spec_helper"

describe ToyRobot::Table do
  subject { ToyRobot::Table.new(5, 5) }

  context "valid_position?" do
  it { should be_valid_position(3, 0) }
  end

end
