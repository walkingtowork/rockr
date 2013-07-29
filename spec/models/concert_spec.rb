require 'spec_helper'

describe Concert do
  before do
    @venue = FactoryGirl.create(:venue)
    @concert = FactoryGirl.create(:concert, :venue_id => @venue.id)
  end

  it "has a time" do
    expect(@concert.time).to eq("17:30:00")
  end

  it "has a date" do
    expect(@concert.date).to eq("2013-07-13")
  end

  it "has a name" do
    expect(@concert.name).to eq("Boy George")
  end

  it "has a venue" do
    expect(@concert.venue).to eq("Madison Square Garden")
  end

end