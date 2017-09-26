require 'spec_helper'

describe ToyRobot::Table do
  subject { ToyRobot::Table.new(5, 5) }

  context "valid_position?" do
    it { should be_valid_position(3, 0) }
    it { should_not be_valid_position(5, 0) }
    it { should_not be_valid_position(-1, -5) }
    it { should be_valid_position(4, 4) }
  end
end
