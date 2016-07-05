$:.unshift(File.dirname(File.expand_path(__FILE__)) + '/../../parser')
$:.unshift(File.dirname(File.expand_path(__FILE__)) + '/../../data')

require "spec_helper"
require "shinkoganeikaido"

describe "新小金井街道店" do
  it "メルマガから取得した2016年7月の休業日が4, 11, 17, 18, 25になること" do
    parser = ShinkoganeikaidoParser.new
    expect(parser.parse).to eq ["4","11","17","18","25"]
  end

  it "PC店から取得した2016年7月の休業日が4, 11, 18, 25になること" do
    parser = ShinkoganeikaidoParser.new
    expect(parser.parse_pc_site).to eq ["4","11","18","25"]
  end
end
