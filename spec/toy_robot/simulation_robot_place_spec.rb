require "spec_helper"

describe ToyRobot::SimulationRobotPlace do
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

end

