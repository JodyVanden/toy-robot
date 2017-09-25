require "spec_helper"

describe (ToyRobot::SimulationRobotPlace) do
  let(:table) {ToyRobot::Table.new(5,5)}
  subject {ToyRobot::SimulationRobotPlace.new(table)}

  it "places robot onto a valid position" do
  expect(ToyRobot::Robot).to receive(:new)
    .with(2, 0, "NORTH")
    .and_return(double)
    subject.place(2, 0, "NORTH")
    expect(subject.robot).not_to be_nil
  end

  it "places robot onto a NOT valid position" do
    expect(ToyRobot::Robot).not_to receive(:new)
      .with(5,1,"EAST")
      expect(subject.robot).to be_nil
  end

  context "when robot has been placed" do
    let(:robot) { instance_double(ToyRobot::Robot) }
    before { allow(subject).to receive(:robot).and_return(robot) }

    it "tells the robot to move" do
      expect(robot).to receive(:move)
      subject.move
      end

    it "tells the robot to turn left" do
      expect(robot).to receive(:turn_left)
      subject.turn_left
      end

    it "tells the robot to turn right" do
      expect(robot).to receive(:turn_right)
      subject.turn_right
      end

    it "tells the robot to report" do
      expect(robot).to receive(:report)
      subject.report
      end
    end
end
