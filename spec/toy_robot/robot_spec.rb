require "spec_helper"

describe ToyRobot::Robot do
  subject {ToyRobot::Robot.new(0)}

  it "moves 4 space" do
    4.times {suject.move}
    expect {suject.position}.to eq(4)
  end
end
