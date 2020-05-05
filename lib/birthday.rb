class Birthday 
  attr_reader :todays_day

  def initialize
    @todays_day = Time.new
  end

  def print_message(bday_day, bday_month, name)
    return "Happy Brthday #{name}" if birthday?(bday_day, bday_month)
    days_till_bday(bday_day, bday_month, name)
  end

  def return_month(value)
    month = {
      "1" => "January",
      "2" => "February",
      "3" => "March",
      "4" => "April",
      "5" => "May",
      "6" => "June",
      "7" => "July",
      "8" => "August",
      "9" => "September",
      "10" => "October",
      "11" => "November",
      "12" => "December",
    }
    month[value]
  end

  private

  def birthday?(bday_day, bday_month)
    @todays_day.day == bday_day.to_i && @todays_day.month == bday_month.to_i
  end

  def days_till_bday(bday_day, bday_month, name)
    day = (@todays_day.day - bday_day.to_i).abs
    month = (@todays_day.month - bday_month.to_i).abs
    "#{day} days and #{month} month till your Birthday #{name}"
  end

end