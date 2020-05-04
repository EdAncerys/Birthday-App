class Birthday 
  attr_reader :todays_day

  def nisialize
    @todays_day = Time.new
  end

  def print_message(bday_day, bday_month, name)
    fail "Happy Brthday #{name}" if birthday?(bday_day, bday_month)
    # days_till_bday(bday_day, bday_monthn, name)
  end

  private

  def birthday?(bday_day, bday_month)
    @todays_day.day == bday_day && @todays_day.month == bday_month
  end

  def days_till_bday

  end

end