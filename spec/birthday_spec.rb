require 'birthday'

describe Birthday do 
  let(:bday) { double("bday", days_left: "2 days and 3 month")}
  let(:name) { double("name", bday_name: "Dave") }
  let(:month) { double(6) }
  let(:day) { double(4) }

  it 'should return happy bday' do
    allow(subject).to receive(:birthday?) { true }
    expect{ subject.print_message(day, month, name) }.to raise_error "Happy Brthday #{name}"
  end

  it 'should return day and month left till bday' do
    # expect(subject.print_message(day, month, name)).to eq "1 days and 1 month till your Birthday Dave"
  end

end