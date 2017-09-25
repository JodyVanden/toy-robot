require "spec_helper"

describe ToyRobot::SimulationRobotPosition do
  let(:table) {ToyRobot::Table.new(5,5)}
  subject {ToyRobot::SimulationRobotPosition.new(table)}

  it "places the robot onto a valid position" do
  expect(ToyRobot::Robot).to receive(:new)
    .with(0, 0, "NORTH")
    .and_return(double)
    subject.place(0, 0, "NORTH")
    expect(subject.robot).not_to be_nil
  end
