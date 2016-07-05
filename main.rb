$:.unshift(File.dirname(File.expand_path(__FILE__)) + '/parser')
$:.unshift(File.dirname(File.expand_path(__FILE__)) + '/data')
$:.unshift(File.dirname(File.expand_path(__FILE__)) + '/util')

require "shinkoganeikaido"
require "holiday"

# puts ShinkoganeikaidoParser.new.parse
Holiday::get(2016)
