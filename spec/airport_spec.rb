require 'airport'
require 'plane'

describe Airport do

  new_airport = Airport.new

  it 'responds to #landing' do
    expect(subject).to respond_to(:landing).with(1).argument
  end

  it 'stores the names of the planes landing in an array' do
    new_plane = Plane.new
    new_airport.landing(new_plane)
    expect(new_airport.planes_on_ground).to eq ([new_plane])
  end

  it 'removes a named plane from @planes_on_ground when it takes off' do
    specific_plane = Plane.new
    new_airport.landing(specific_plane)
    expect(new_airport.take_off(specific_plane)).to eq (specific_plane)
  end
end
