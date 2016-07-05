require "open-uri"

module Holiday
  def self.get(year)
    line_num = 0
    holidays = []
    open("http://calendar-service.net/cal?start_year=#{year}&start_mon=1&end_year=#{year}&end_mon=12&year_style=normal&month_style=ja&wday_style=ja&format=csv&holiday_only=1&zero_padding=1") { |f| 
      f.each_line { |line| 
        data = line.split(",")
        next unless data[1].match(/[0-9]{2}/)
        holidays.push("#{data[1]}#{data[2]}")
      }
    }
    holidays
  end
end
