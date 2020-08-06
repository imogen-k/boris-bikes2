require 'DockingStation'


describe DockingStation do

  #it { is_expected.to respond_to :release_bike }
  it 'Expects DockingStation to respond to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'Expects bike to be working' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'Expects docking to be possible' do
    station = DockingStation.new
    expect(station).to respond_to(:dock).with(1).argument
  end

  it 'Returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.dock(bike)).to eq(bike)
  end

  it 'Docks bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

end
