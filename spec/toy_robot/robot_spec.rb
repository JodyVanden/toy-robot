require "spec_helper"

describe ToyRobot::Robot do
  subject {ToyRobot::Robot.new(0)}

  it "moves 4 space" do
    4.times {subject.move_forward}
    expect(subject.position).to eq(4)
  end

  it "moves 2 space" do
    2.times {subject.move_forward}
    expect(subject.position).to eq(2)
  end

  it "moves 2 space" do
    2.times {subject.move_backward}
    expect(subject.position).to eq(-2)
  end

  it "moves 2 space" do
    2.times {subject.move_backward}
    expect(subject.position).to eq(-2)
  end
end
