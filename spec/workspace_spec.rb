require "spec_helper"

RSpec.describe Workspace do
  it "has a version number" do
    expect(Workspace::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
