require 'birthday'

describe Birthday do 
  let(:bday) { double("bday", days_left: "2 days and 3 month")}
  let(:name) { double("name", bday_name: "Dave") }
  let(:month) { double(2) }
  let(:day) { double("day", bday_day: 2) }

  context '#print_message' do
    it 'should return happy bday' do
      allow(subject).to receive(:birthday?) { true }
      expect(subject.print_message(day, month, name)).to eq "Happy Brthday #{name}"
    end

    it 'should return day and month left till bday' do
      allow(subject.todays_day).to receive(:day) { 3 }
      allow(subject.todays_day).to receive(:month) { 3 }
      expect(subject.print_message(4, 4, name)).to eq "1 days and 1 month till your Birthday #{name}"
    end
  end

end