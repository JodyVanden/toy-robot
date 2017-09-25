require "spec_helper"

describe ToyRobot::Robot do
  subject {ToyRobot::Robot.new(0)}

  it "moves 4 space" do
    4.times {subject.move}
    expect(subject.position).to eq(4)
  end
end
