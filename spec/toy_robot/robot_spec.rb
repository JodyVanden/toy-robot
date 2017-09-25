require "spec_helper"

describe ToyRobot::Robot do
  subject {ToyRobot::Robot.new(0)}

  it "moves forward 4 space" do
    4.times {subject.move_forward}
    expect(subject.position_x).to eq(4)
  end

  it "moves forward 2 space" do
    2.times {subject.move_forward}
    expect(subject.position_x).to eq(2)
  end

  it "moves backward 2 space" do
    2.times {subject.move_backward}
    expect(subject.position_x).to eq(-2)
  end

  it "moves backward 4 space" do
    4.times {subject.move_backward}
    expect(subject.position_x).to eq(-4)
  end

  it "moves up 2 space" do
    2.times {subject.move_up}
    expect(subject.position_y).to eq(2)
  end

  it "moves up 4 space" do
    4.times {subject.move_up}
    expect(subject.position_y).to eq(4)
  end

  it "moves down 4 space" do
    4.times {subject.move_down}
    expect(subject.position_y).to eq(-4)
  end

  it "moves down 4 space" do
    2.times {subject.move_down}
    expect(subject.position_y).to eq(-2)
  end
end

context "robot facing EAST" do
  subject {ToyRobot::Robot.new(0,0,"EAST")}

  it "move east" do
    subject.move
    expect(subject.position_x).to eq(1)
  end

  it "direction change to NORTH" do
    subject.turn_left
    expect(subject.direction).to eq("NORTH")
  end

  it "direction change to SOUTH" do
    subject.turn_right
    expect(subject.direction).to eq("SOUTH")
  end
end

context "robot facing NORTH" do
  subject {ToyRobot::Robot.new(0,0,"NORTH")}

  it "move North" do
    subject.move
    expect(subject.position_y).to eq(1)
  end

  it "direction change to WEST" do
    subject.turn_left
    expect(subject.direction).to eq("WEST")
  end

  it "direction change to EAST" do
    subject.turn_right
    expect(subject.direction).to eq("EAST")
  end
end

context "should move forward if facing SOUTH" do
  subject {ToyRobot::Robot.new(0,0,"SOUTH")}

  it "move SOUTH" do
    subject.move
    expect(subject.position_y).to eq(-1)
  end
end

context "should move forward if facing WEST" do
  subject {ToyRobot::Robot.new(0,0,"WEST")}

  it "move WEST" do
    subject.move
    expect(subject.position_x).to eq(-1)
  end
end

context "#report" do
  subject{ToyRobot::Robot.new(0,0,"EAST")}

  it "report the position of the robot" do
  expect(subject.report).to eq({
    position_x: 0,
    position_y: 0,
    direction: "EAST"
    })
  end
end

context "#report" do
  subject{ToyRobot::Robot.new(3,2,"SOUTH")}

  it "report the position of the robot" do
  expect(subject.report).to eq({
    position_x: 3,
    position_y: 2,
    direction: "SOUTH"
    })
  end
end

