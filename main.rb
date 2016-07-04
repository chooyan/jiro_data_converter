$:.unshift(File.dirname(File.expand_path(__FILE__)) + '/parser')
$:.unshift(File.dirname(File.expand_path(__FILE__)) + '/data')

require "shinkoganeikaido"

puts ShinkoganeikaidoParser.new.parse
