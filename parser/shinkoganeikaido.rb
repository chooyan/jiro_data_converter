require "open_hour_parser"

class ShinkoganeikaidoParser < OpenHourParser
  def parse()
    super("shinkoganeikaido_201607.txt")
  end
end
