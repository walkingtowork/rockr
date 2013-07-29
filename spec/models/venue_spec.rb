require 'spec_helper'

describe Venue do
  before do
    @venue = FactoryGirl.create(:venue)
    @concert = FactoryGirl.create(:concert, :venue_id => @venue.id)
  end

  it "has a name" do
    expect(@venue.name).to eq("Madison Square Garden")
  end

  it "has a concert" do
    expect(@venue.concerts).to include(@concert)
  end

end