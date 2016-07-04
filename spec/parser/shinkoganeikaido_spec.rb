require "spec_helper"
require "./parser/shinkoganeikaido"

describe "Shinkoganeikaido" do
  it "is named 'jiro'" do
    parser = ShinkoganeikaidoParser.new
    expect(parser.parse).to eq ["4","11","17","18","25"]
  end
end
