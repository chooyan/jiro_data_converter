class ShinkoganeikaidoParser
  def parse()
    begin
      File.open('./data/shinkoganeikaido_201607.txt') do |file|
        result_str = file.read.gsub(/7月/, "")
                      .gsub(/http.*/, "")
                      .gsub(/[^0-9]/, ",")
                      .gsub(/,+/, ",")
                      .gsub(/^,/, "")
        result_str.split(",")
      end
    rescue SystemCallError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    rescue IOError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    end
  end
end
