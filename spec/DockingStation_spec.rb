require 'DockingStation'


describe DockingStation do
  # it 'Expects DockingStation to respond to release_bike' do
  # expect(DockingStation.new).to respond_to(:release_bike)
  it { is_expected.to respond_to :release_bike }
  it 'bike working' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq true
  end

end
